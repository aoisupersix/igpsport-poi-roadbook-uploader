import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:igpsport_poi_roadbook_uploader/common/models/igpsport_credentials.dart';
import 'package:igpsport_poi_roadbook_uploader/common/providers/igpsport_credentials.dart';
import 'package:igpsport_poi_roadbook_uploader/common/utils/extensions/build_context.dart';
import 'package:igpsport_poi_roadbook_uploader/router/routes.dart';

/// Form to enter the iGPSPORT email and password and store them securely.
class CredentialsFormPage extends HookConsumerWidget {
  const CredentialsFormPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final t = context.t;
    final formKey = useMemoized(GlobalKey<FormState>.new);
    final saved = ref.watch(igpsportCredentialsProvider);
    final emailController = useTextEditingController(text: saved?.email);
    final passwordController = useTextEditingController(text: saved?.password);
    final isPasswordVisible = useState(false);
    final isSubmitting = useState(false);

    Future<void> submit() async {
      if (!formKey.currentState!.validate()) {
        return;
      }
      isSubmitting.value = true;
      final messenger = ScaffoldMessenger.of(context);
      try {
        await ref.read(igpsportCredentialsProvider.notifier).save(
              IgpsportCredentials(
                email: emailController.text.trim(),
                password: passwordController.text,
              ),
            );
        if (!context.mounted) return;
        messenger.showSnackBar(SnackBar(content: Text(t.credentials.saved)));
        const HomeRoute().go(context);
      } on Object catch (error) {
        if (!context.mounted) return;
        isSubmitting.value = false;
        messenger.showSnackBar(
          SnackBar(
            content: Text(t.credentials.saveFailed(message: error.toString())),
          ),
        );
      }
    }

    Future<void> delete() async {
      isSubmitting.value = true;
      final messenger = ScaffoldMessenger.of(context);
      try {
        await ref.read(igpsportCredentialsProvider.notifier).clear();
        if (!context.mounted) return;
        messenger.showSnackBar(SnackBar(content: Text(t.credentials.deleted)));
      } finally {
        isSubmitting.value = false;
      }
    }

    return Scaffold(
      appBar: AppBar(title: Text(t.credentials.title)),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Form(
          key: formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            spacing: 24,
            children: [
              Text(t.credentials.description),
              TextFormField(
                controller: emailController,
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.mail_outline),
                  labelText: t.credentials.email,
                  hintText: t.credentials.emailHint,
                  border: const OutlineInputBorder(),
                ),
                keyboardType: TextInputType.emailAddress,
                autofillHints: const [AutofillHints.email],
                validator: (value) {
                  final input = value?.trim() ?? '';
                  if (input.isEmpty) {
                    return t.credentials.requiredField;
                  }
                  final emailPattern = RegExp(r'^[^@\s]+@[^@\s]+\.[^@\s]+$');
                  if (!emailPattern.hasMatch(input)) {
                    return t.credentials.invalidEmail;
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: passwordController,
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.lock_outline),
                  labelText: t.credentials.password,
                  hintText: t.credentials.passwordHint,
                  border: const OutlineInputBorder(),
                  suffixIcon: IconButton(
                    icon: Icon(
                      isPasswordVisible.value
                          ? Icons.visibility_off
                          : Icons.visibility,
                    ),
                    onPressed: () =>
                        isPasswordVisible.value = !isPasswordVisible.value,
                  ),
                ),
                obscureText: !isPasswordVisible.value,
                keyboardType: TextInputType.visiblePassword,
                autofillHints: const [AutofillHints.password],
                validator: (value) =>
                    (value?.isEmpty ?? true) ? t.credentials.requiredField : null,
              ),
              FilledButton.icon(
                icon: const Icon(Icons.save),
                label: Text(t.common.save),
                onPressed: isSubmitting.value ? null : submit,
              ),
              if (saved != null)
                TextButton.icon(
                  icon: const Icon(Icons.delete_outline),
                  label: Text(t.credentials.deleteAccount),
                  onPressed: isSubmitting.value ? null : delete,
                ),
            ],
          ),
        ),
      ),
    );
  }
}
