import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'Aspect Ratio_Expanded_FractionallySizedBox.dart';
import 'ResponsiveApp.dart';
import 'Sizer_ResponsiveBuilder_Device Preview.dart';


class myApp extends StatelessWidget {
  const myApp({super.key});

  Widget build(BuildContext context) {
    return Sizer(
      builder: (context,orientation,screenType) {
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
    );
  }
}