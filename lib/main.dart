import 'package:flutter/material.dart';
import 'package:shop/utils/app_components.dart';
import 'package:shop/market_app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await AppComponents().init();
  runApp(MyApp());
}
