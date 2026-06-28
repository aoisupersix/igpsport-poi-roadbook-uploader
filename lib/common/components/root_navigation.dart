import 'package:flutter/material.dart';

/// Base widget for all pages.
///
/// For now it simply renders its child, but it is intended to centralize
/// logic common to every screen in the future.
class RootNavigation extends StatelessWidget {
  const RootNavigation({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) => child;
}
