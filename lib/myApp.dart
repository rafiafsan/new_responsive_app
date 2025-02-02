import 'package:flutter/material.dart';
import 'Aspect Ratio_Expanded_FractionallySizedBox.dart';
import 'ResponsiveApp.dart';
import 'Sizer_ResponsiveBuilder_Device Preview.dart';


class myApp extends StatelessWidget {
  const myApp({super.key});

  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.white,
        appBarTheme: AppBarTheme(
          color: Colors.green,
          centerTitle: true,
        ),scaffoldBackgroundColor: Colors.white,

      ),
      title: "First App",
      home: ModuleNine3(),
    );
  }
}