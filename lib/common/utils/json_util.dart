/// Helpers for reading loosely-typed JSON from reverse-engineered APIs.
library;

final _nonAlnum = RegExp('[^a-z0-9]');

/// Lowercases a key and drops everything but alphanumerics.
String normalizeKey(String value) =>
    value.toLowerCase().replaceAll(_nonAlnum, '');

/// Gets a value from a JSON object by key, ignoring key case and separators.
dynamic jsonGetCi(dynamic container, String key, [dynamic defaultValue]) {
  if (container is! Map) return defaultValue;

  final target = normalizeKey(key);
  for (final entry in container.entries) {
    final currentKey = entry.key;
    if (currentKey is String && normalizeKey(currentKey) == target) {
      return entry.value;
    }
  }
  return defaultValue;
}
