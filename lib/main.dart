import 'package:flutter/material.dart';
import 'package:undp_project/session_13.dart';
import 'package:undp_project/session_eleven.dart';
import 'package:undp_project/session_fourteen.dart';
import 'package:undp_project/session_ten.dart';
import 'package:undp_project/session_ten_sec_page.dart';
import 'package:undp_project/session_thirteen_assignement.dart';
import 'package:undp_project/session_twel_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      title: 'UNDP',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.orange),
        useMaterial3: true,
      ),
      home:const SessionFourteen() ,
    );
  }
}
