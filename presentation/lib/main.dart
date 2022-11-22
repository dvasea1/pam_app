import 'package:di/di.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_2/presentation/home/home_page.dart';
import 'package:test_2/presentation/user/users_page.dart';

void main() async{
  await initDi();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(),
      home: const UsersPage(),
    );
  }
}
