import 'package:flutter/material.dart';
import 'package:igpsport_poi_roadbook_uploader/i18n/strings.g.dart';

/// Extension methods on [BuildContext].
extension BuildContextExtensions on BuildContext {
  /// Returns the [Translations] for the current locale.
  Translations get t => Translations.of(this);
}
