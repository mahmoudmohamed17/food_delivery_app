import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_app/app.dart';
import 'package:food_delivery_app/core/services/shared_prefs.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SharedPrefs.init();
  runApp(DevicePreview(enabled: true, builder: (context) => const MyApp()));
}
