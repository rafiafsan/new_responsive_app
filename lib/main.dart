import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

import 'myApp.dart';

void main() {
  runApp(
    DevicePreview(builder: (context) => myApp()),
  );
}
