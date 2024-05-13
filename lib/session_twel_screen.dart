import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SessionTwelveScreen extends StatefulWidget {
  const SessionTwelveScreen({super.key});

  @override
  State<SessionTwelveScreen> createState() => _SessionTwelveScreenState();
}

class _SessionTwelveScreenState extends State<SessionTwelveScreen> {
  List singleData = [
    "A",
    "B",
    "C",
    "D",
    "E",
    "F",
    "G",
    "I",
  ];

  List<Map<String, dynamic>> dynamicData = [
    {
      "image": "assets/images/shakir.jpeg",
      "name": "J",
      "des": "jpeg",
    },
    {
      "image": "assets/images/profile.png",
      "name": "P",
      "des": "PNG",
    },
    {
      "image": "assets/images/shakir.jpg",
      "name": "J",
      "des": "JPG",
    },
    {
      "image": "assets/images/shakir.jpeg",
      "name": "J",
      "des": "jpeg",
    },
    {
      "image": "assets/images/shakir.jpg",
      "name": "J",
      "des": "JPG",
    },
    {
      "image": "assets/images/shakir.jpeg",
      "name": "J",
      "des": "jpeg",
    },
    {
      "image": "assets/images/shakir.jpg",
      "name": "J",
      "des": "JPG",
    },
    {
      "image": "assets/images/shakir.jpeg",
      "name": "J",
      "des": "jpeg",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Column(
        children: [
          Container(
            height: 100,
            alignment: Alignment.center,
            width: double.infinity,
            color: Colors.orange,
            child: Text(
              "TextField",
              style: TextStyle(
                fontSize: 24,
              ),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: GridView.builder(
                  itemCount: dynamicData.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 16,
                    crossAxisSpacing: 16,
                  ),
                  itemBuilder: (context, index) {
                    return Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          border: Border.all(color: Colors.red)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(22),
                            child: Image.asset(
                              dynamicData[index]['image'],
                              width: 120,
                              height: 120,
                            ),
                          ),
                          Text(
                            dynamicData[index]['name'],
                            style: const TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            dynamicData[index]['des'],
                            style: const TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    );
                  }),
            ),
          ),
        ],
      )),
    );
  }
}
