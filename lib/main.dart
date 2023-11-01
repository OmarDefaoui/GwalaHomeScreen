import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gwala_interview/core/initialization.dart';
import 'package:gwala_interview/core/managers/route_manager.dart';
import 'package:gwala_interview/screens/base/base_screen.dart';

void main() {
  InitializeApp.initGetx();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Gwala',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      initialRoute: BaseScreen.routeName,
      routes: RouteManager.routes,
    );
  }
}
