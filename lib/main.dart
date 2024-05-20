import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/instance_manager.dart';
import 'package:get/route_manager.dart';
import 'package:undp_project/controller/appController.dart';
import 'package:undp_project/view/screens/session_nineteen/session_nineteen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
final appController =Get.put(AppController());
    return GetMaterialApp(
      title: 'UNDP',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.orange),
        useMaterial3: true,
      ),
      home:const SessionNineteen() ,
    );
  }
}
