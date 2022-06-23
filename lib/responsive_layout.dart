import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget mobileScreenLayout;
  final Widget webScreenLayout;
  const ResponsiveLayout(
      {Key? key,
      required this.mobileScreenLayout,
      required this.webScreenLayout})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      // ! to change hardcoded value!
      if (constraints.maxWidth > 900) {
        // Web layout
        return webScreenLayout;
      } else {
        // Mobile layout
        return mobileScreenLayout;
      }
    });
  }
}
