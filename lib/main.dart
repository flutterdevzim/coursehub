import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart' show kReleaseMode;
import 'package:flutter/material.dart';

import 'package:coursehub/ui/index.dart';
import 'package:coursehub/utils/index.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    DevicePreview(
      enabled: !kReleaseMode, // default state
      //enabled: false;             // uncomment this to disable the device preview and comment the above code
      /*
      onScreenshot: (screenshot) async {
        final bytes = screenshot.bytes;
        final scrnshot = await <Function-to-save-bytes-as-images-to-storage>(bytes);
        return scrnshot;
      },
      */
      builder: (context) => MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'CourseHub',
      theme: mainTheme,
      home: OnboardingScreen(),
    );
  }
}
