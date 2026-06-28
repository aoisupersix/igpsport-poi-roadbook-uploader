import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:igpsport_poi_roadbook_uploader/common/utils/extensions/build_context.dart';
import 'package:igpsport_poi_roadbook_uploader/features/upload/models/roadbook_privacy.dart';
import 'package:igpsport_poi_roadbook_uploader/features/upload/models/upload_log_entry.dart';
import 'package:igpsport_poi_roadbook_uploader/features/upload/providers/upload_controller.dart';

/// Page to pick a GPX file, choose its visibility, and upload it to iGPSPORT
/// while showing progress as an on-screen log.
class UploadPage extends HookConsumerWidget {
  const UploadPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final t = context.t;
    final uploadState = ref.watch(uploadControllerProvider);
    final controller = ref.read(uploadControllerProvider.notifier);

    final pickedFile = useState<PlatformFile?>(null);
    final titleController = useTextEditingController();
    final privacy = useState(RoadbookPrivacy.private);
    final logScrollController = useScrollController();

    // Keep the log view scrolled to the latest entry.
    useEffect(() {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (logScrollController.hasClients) {
          logScrollController
              .jumpTo(logScrollController.position.maxScrollExtent);
        }
      });
      return null;
    }, [uploadState.logs.length]);

    Future<void> pickFile() async {
      final result = await FilePicker.platform.pickFiles(
        type: FileType.custom,
        allowedExtensions: const ['gpx'],
        withData: true,
      );
      final file = result?.files.single;
      if (file == null) return;
      pickedFile.value = file;
      if (titleController.text.trim().isEmpty) {
        titleController.text =
            file.name.replaceAll(RegExp(r'\.gpx$', caseSensitive: false), '');
      }
    }

    Future<void> startUpload() async {
      final file = pickedFile.value;
      final bytes = file?.bytes;
      if (file == null || bytes == null) return;
      final title = titleController.text.trim().isEmpty
          ? file.name
          : titleController.text.trim();
      await controller.upload(
        gpxBytes: bytes,
        filename: file.name,
        title: title,
        privacy: privacy.value,
      );
    }

    final isUploading = uploadState.isUploading;
    final canUpload = pickedFile.value != null && !isUploading;

    return Scaffold(
      appBar: AppBar(title: Text(t.upload.title)),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          spacing: 16,
          children: [
            OutlinedButton.icon(
              icon: const Icon(Icons.attach_file),
              label: Text(
                pickedFile.value?.name ?? t.upload.pickGpxFile,
                overflow: TextOverflow.ellipsis,
              ),
              onPressed: isUploading ? null : pickFile,
            ),
            TextField(
              controller: titleController,
              enabled: !isUploading,
              decoration: InputDecoration(
                labelText: t.upload.roadbookTitle,
                border: const OutlineInputBorder(),
              ),
            ),
            SegmentedButton<RoadbookPrivacy>(
              segments: [
                ButtonSegment(
                  value: RoadbookPrivacy.public,
                  icon: const Icon(Icons.public),
                  label: Text(t.upload.public),
                ),
                ButtonSegment(
                  value: RoadbookPrivacy.private,
                  icon: const Icon(Icons.lock_outline),
                  label: Text(t.upload.private),
                ),
              ],
              selected: {privacy.value},
              onSelectionChanged: isUploading
                  ? null
                  : (selection) => privacy.value = selection.first,
            ),
            FilledButton.icon(
              icon: isUploading
                  ? const SizedBox.square(
                      dimension: 18,
                      child: CircularProgressIndicator(strokeWidth: 2),
                    )
                  : const Icon(Icons.cloud_upload),
              label: Text(t.upload.upload),
              onPressed: canUpload ? startUpload : null,
            ),
            Row(
              children: [
                Text(t.upload.logs, style: Theme.of(context).textTheme.titleSmall),
                const Spacer(),
                if (uploadState.logs.isNotEmpty && !isUploading)
                  TextButton(
                    onPressed: controller.clear,
                    child: Text(t.upload.clearLogs),
                  ),
              ],
            ),
            Expanded(
              child: _LogConsole(
                logs: uploadState.logs,
                scrollController: logScrollController,
              ),
            ),
            if (uploadState.succeeded != null)
              _ResultBanner(succeeded: uploadState.succeeded!),
          ],
        ),
      ),
    );
  }
}

/// Scrollable console that renders upload [logs] with color-coded levels.
class _LogConsole extends StatelessWidget {
  const _LogConsole({required this.logs, required this.scrollController});

  final List<UploadLogEntry> logs;
  final ScrollController scrollController;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: theme.colorScheme.surfaceContainerHighest,
        borderRadius: BorderRadius.circular(8),
      ),
      child: logs.isEmpty
          ? Center(
              child: Text(
                context.t.upload.logsEmpty,
                style: theme.textTheme.bodySmall,
              ),
            )
          : ListView.builder(
              controller: scrollController,
              itemCount: logs.length,
              itemBuilder: (context, index) =>
                  _LogLine(entry: logs[index], theme: theme),
            ),
    );
  }
}

class _LogLine extends StatelessWidget {
  const _LogLine({required this.entry, required this.theme});

  final UploadLogEntry entry;
  final ThemeData theme;

  @override
  Widget build(BuildContext context) {
    final color = switch (entry.level) {
      UploadLogLevel.error => theme.colorScheme.error,
      UploadLogLevel.success => Colors.green.shade700,
      UploadLogLevel.info => theme.colorScheme.onSurfaceVariant,
    };
    final time = entry.time;
    final stamp = '${_pad(time.hour)}:${_pad(time.minute)}:${_pad(time.second)}';
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 1),
      child: Text(
        '[$stamp] ${entry.message}',
        style: theme.textTheme.bodySmall?.copyWith(
          color: color,
          fontFamily: 'monospace',
        ),
      ),
    );
  }

  static String _pad(int value) => value.toString().padLeft(2, '0');
}

class _ResultBanner extends StatelessWidget {
  const _ResultBanner({required this.succeeded});

  final bool succeeded;

  @override
  Widget build(BuildContext context) {
    final t = context.t;
    final theme = Theme.of(context);
    final color =
        succeeded ? Colors.green.shade700 : theme.colorScheme.error;
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: color.withValues(alpha: 0.12),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        spacing: 8,
        children: [
          Icon(succeeded ? Icons.check_circle : Icons.error, color: color),
          Expanded(
            child: Text(
              succeeded ? t.upload.resultSuccess : t.upload.resultFailure,
              style: TextStyle(color: color),
            ),
          ),
        ],
      ),
    );
  }
}
