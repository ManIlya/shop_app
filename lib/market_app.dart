import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shop/widgets/home_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.black, primary: Colors.black),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}
