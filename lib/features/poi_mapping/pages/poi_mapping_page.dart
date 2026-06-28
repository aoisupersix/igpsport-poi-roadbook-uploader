import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:igpsport_poi_roadbook_uploader/common/models/igpsport_poi_type.dart';
import 'package:igpsport_poi_roadbook_uploader/common/models/poi_type_mapping.dart';
import 'package:igpsport_poi_roadbook_uploader/common/providers/poi_type_mapping_controller.dart';
import 'package:igpsport_poi_roadbook_uploader/common/utils/extensions/build_context.dart';

/// Normalizes a GPX type for duplicate detection, mirroring [PoiTypeResolver].
final _nonAlnum = RegExp('[^A-Z0-9]');
String _normalizeGpxType(String value) =>
    value.toUpperCase().replaceAll(_nonAlnum, '');

/// Page to view and edit the GPX to iGPSPORT POI type mapping.
class PoiMappingPage extends HookConsumerWidget {
  const PoiMappingPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final t = context.t;
    final mapping = ref.watch(poiTypeMappingControllerProvider);
    final controller = ref.read(poiTypeMappingControllerProvider.notifier);

    Future<void> confirmReset() async {
      final shouldReset = await showDialog<bool>(
        context: context,
        builder: (context) => AlertDialog(
          title: Text(t.poiMapping.resetConfirmTitle),
          content: Text(t.poiMapping.resetConfirmMessage),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(false),
              child: Text(t.poiMapping.cancel),
            ),
            FilledButton(
              onPressed: () => Navigator.of(context).pop(true),
              child: Text(t.poiMapping.reset),
            ),
          ],
        ),
      );
      if (shouldReset ?? false) await controller.resetToDefault();
    }

    Future<void> addEntry() async {
      final entry = await showDialog<PoiTypeMappingEntry>(
        context: context,
        builder: (context) => _MappingEntryDialog(entries: mapping.entries),
      );
      if (entry != null) await controller.addEntry(entry);
    }

    Future<void> editEntry(int index) async {
      final entry = await showDialog<PoiTypeMappingEntry>(
        context: context,
        builder: (context) =>
            _MappingEntryDialog(entries: mapping.entries, editingIndex: index),
      );
      if (entry != null) await controller.updateEntry(index, entry);
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(t.poiMapping.title),
        actions: [
          IconButton(
            icon: const Icon(Icons.restore),
            tooltip: t.poiMapping.reset,
            onPressed: confirmReset,
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: addEntry,
        icon: const Icon(Icons.add),
        label: Text(t.poiMapping.addEntry),
      ),
      body: ListView(
        padding: const EdgeInsets.only(bottom: 88),
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Text(
              t.poiMapping.description,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ),
          ListTile(
            title: Text(t.poiMapping.defaultTypeLabel),
            trailing: _PoiTypeDropdown(
              value: mapping.defaultType,
              onChanged: controller.setDefaultType,
            ),
          ),
          const Divider(),
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
            child: Text(
              t.poiMapping.mappingsLabel,
              style: Theme.of(context).textTheme.titleSmall,
            ),
          ),
          if (mapping.entries.isNotEmpty)
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 0, 16, 4),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      t.poiMapping.gpxTypeLabel,
                      style: Theme.of(context).textTheme.labelMedium,
                    ),
                  ),
                  SizedBox(
                    width: 180,
                    child: Text(
                      t.poiMapping.igpsportTypeLabel,
                      style: Theme.of(context).textTheme.labelMedium,
                    ),
                  ),
                  // Spacer matching the trailing delete IconButton width.
                  const SizedBox(width: 48),
                ],
              ),
            ),
          if (mapping.entries.isEmpty)
            Padding(
              padding: const EdgeInsets.all(16),
              child: Text(t.poiMapping.empty),
            )
          else
            for (final (index, entry) in mapping.entries.indexed)
              ListTile(
                title: Text(entry.gpxType),
                onTap: () => editEntry(index),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    _PoiTypeDropdown(
                      value: entry.igpsportType,
                      onChanged: (type) => controller.updateEntry(
                        index,
                        entry.copyWith(igpsportType: type),
                      ),
                    ),
                    IconButton(
                      icon: const Icon(Icons.delete_outline),
                      tooltip: t.poiMapping.delete,
                      onPressed: () => controller.removeEntry(index),
                    ),
                  ],
                ),
              ),
        ],
      ),
    );
  }
}

/// Dropdown listing every [IgpsportPoiType] by its API value.
class _PoiTypeDropdown extends StatelessWidget {
  const _PoiTypeDropdown({required this.value, required this.onChanged});

  final IgpsportPoiType value;
  final ValueChanged<IgpsportPoiType> onChanged;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 180,
      child: DropdownButton<IgpsportPoiType>(
        value: value,
        isExpanded: true,
        onChanged: (type) {
          if (type != null) onChanged(type);
        },
        items: [
          for (final type in IgpsportPoiType.values)
            DropdownMenuItem(
              value: type,
              child: Text(type.value, overflow: TextOverflow.ellipsis),
            ),
        ],
      ),
    );
  }
}

/// Dialog to add or edit a single [PoiTypeMappingEntry].
class _MappingEntryDialog extends HookWidget {
  const _MappingEntryDialog({required this.entries, this.editingIndex});

  final List<PoiTypeMappingEntry> entries;
  final int? editingIndex;

  @override
  Widget build(BuildContext context) {
    final t = context.t;
    final editing = editingIndex != null ? entries[editingIndex!] : null;
    final gpxController = useTextEditingController(
      text: editing?.gpxType ?? '',
    );
    final selectedType = useState(
      editing?.igpsportType ?? IgpsportPoiType.viaPoint,
    );
    final errorText = useState<String?>(null);

    void submit() {
      final gpxType = gpxController.text.trim();
      if (gpxType.isEmpty) {
        errorText.value = t.poiMapping.gpxTypeRequired;
        return;
      }
      final normalized = _normalizeGpxType(gpxType);
      final isDuplicate = entries.indexed.any(
        (e) =>
            e.$1 != editingIndex &&
            _normalizeGpxType(e.$2.gpxType) == normalized,
      );
      if (isDuplicate) {
        errorText.value = t.poiMapping.duplicateError;
        return;
      }
      Navigator.of(context).pop(
        PoiTypeMappingEntry(gpxType: gpxType, igpsportType: selectedType.value),
      );
    }

    return AlertDialog(
      title: Text(
        editing != null ? t.poiMapping.editEntry : t.poiMapping.addEntry,
      ),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextField(
            controller: gpxController,
            autofocus: true,
            decoration: InputDecoration(
              labelText: t.poiMapping.gpxTypeLabel,
              errorText: errorText.value,
            ),
            onChanged: (_) => errorText.value = null,
          ),
          const SizedBox(height: 16),
          Row(
            children: [
              Expanded(child: Text(t.poiMapping.igpsportTypeLabel)),
              _PoiTypeDropdown(
                value: selectedType.value,
                onChanged: (type) => selectedType.value = type,
              ),
            ],
          ),
        ],
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.of(context).pop(),
          child: Text(t.poiMapping.cancel),
        ),
        FilledButton(onPressed: submit, child: Text(t.poiMapping.save)),
      ],
    );
  }
}
