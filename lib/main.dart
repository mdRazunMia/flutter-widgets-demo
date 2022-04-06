import 'package:flutter/material.dart';
import 'package:flutter_widgets_demo/screens/center_screen.dart';
import 'package:flutter_widgets_demo/screens/home_screen.dart';
import 'package:get/get.dart';

import 'screens/expanded_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ExpandedScreen(),
      getPages: [
        GetPage(name: '/homeScreen', page: () => const HomeScreen()),
        GetPage(name: '/centerWidget', page: () => const CenterScreen()),
        GetPage(name: '/centerWidget', page: () => const CenterScreen()),
      ],
    );
  }
}
