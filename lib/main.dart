import 'package:flutter/material.dart';
import 'package:food_delivery_app/app.dart';
import 'package:food_delivery_app/core/services/shared_prefs.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SharedPrefs.init();
  runApp(const MyApp());
}
