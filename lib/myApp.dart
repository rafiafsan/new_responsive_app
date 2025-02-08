import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:new_responsive_app/snackbar.dart';
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
          useInheritedMediaQuery: true,
          locale: DevicePreview.locale(context),
          builder: DevicePreview.appBuilder,
          theme: ThemeData(
            primaryColor: Colors.white,
            appBarTheme: AppBarTheme(
              color: Colors.green,
              centerTitle: true,
            ),scaffoldBackgroundColor: Colors.white,

          ),
          title: "First App",
          home: Module11class1(),
        );
      }
    );
  }
}