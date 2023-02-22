import 'package:flutter/material.dart';

import './extensions.dart';

class Responsive extends StatelessWidget {
  final Widget mobile;
  final Widget? tablet;
  final Widget? desktop;

  const Responsive(
      {Key? key, required this.mobile, this.tablet, required this.desktop})
      : super(key: key);

  static bool isMobile(BuildContext context) => context.width < 576;

  static bool isTablet(BuildContext context) =>
      context.width >= 576 && context.width <= 992;

  static bool isDesktop(BuildContext context) => context.width > 992;

  @override
  Widget build(BuildContext context) {
    final double _width = context.width;
    if (_width > 992) {
      return desktop!;
    } else if (_width >= 576) {
      return tablet ?? desktop!;
    } else {
      return mobile;
    }
  }
}
