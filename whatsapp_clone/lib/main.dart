import 'package:flutter/material.dart';
import 'colours.dart';
import 'responsive_layout.dart';
import 'screens/all.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // removes banner on app
      debugShowCheckedModeBanner: false,
      title: "Deon's & Andre's WhatsApp Clone",
      theme: ThemeData.dark().copyWith(
        backgroundColor: backgroundColor,
      ),
      home: const ResponsiveLayout(
          mobileScreenLayout: MobileScreenLayout(),
          webScreenLayout: WebScreenLayout()),
    );
  }
}
