import 'package:logger/logger.dart';

/// Application-wide logger that prints to the debug console.
final logger = Logger(printer: PrettyPrinter(methodCount: 0));
