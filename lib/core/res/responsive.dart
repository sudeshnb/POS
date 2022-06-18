import 'package:flutter/material.dart';

class Responsive extends StatelessWidget {
  final Widget? tablet;
  final Widget desktop;

  const Responsive({
    Key? key,
    this.tablet,
    required this.desktop,
  }) : super(key: key);

// This size work fine on my design, maybe you need some customization depends on your design

  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width < 1100 &&
      MediaQuery.of(context).size.width >= 720;

  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 1100;
  static double textSize = 14.0;
  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;
    // If our width is more than 1100 then we consider it a desktop
    if (_size.width >= 1100) {
      textSize = _size.width / 100;
      // print('desktop: $textSize');
      return desktop;
    }
    // If width it less then 1100 and more then 850 we consider it as tablet
    else {
      textSize = _size.width / 80;
      return tablet!;
    }
  }
}
