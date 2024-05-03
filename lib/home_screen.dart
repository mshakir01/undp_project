import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            decoration: BoxDecoration(
              // border: Border.all(width: 3, color: Colors.green),
              borderRadius: BorderRadius.circular(6),
              color: Color(0xffEA3B12),
              // shape: BoxShape.circle
            ),
            alignment: Alignment.center,
            width: 90,
            height: 32,
            // color: Colors.yellow,
            child: const Text(
              "Learn more",
              style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.normal,
                  color: Color(0xffFFFFFF)),
            ),
          ),
          Container(
            height: 56,
            width: 350,
            child: TextField(
              textAlign: TextAlign.left,
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                alignLabelWithHint: true,
                hintText: "Email",
                hintStyle: TextStyle(fontStyle: FontStyle.italic),
                label: Text("Label"),
                labelStyle: TextStyle(fontSize: 12),
                prefix: Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: Icon(
                    Icons.email,
                    color: Colors.amber,
                    size: 20,
                  ),
                ),
                suffix: Icon(Icons.remove_red_eye),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
