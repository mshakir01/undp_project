import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SessionElevenScreen extends StatefulWidget {
  const SessionElevenScreen({super.key});

  @override
  State<SessionElevenScreen> createState() => _SessionElevenScreenState();
}

class _SessionElevenScreenState extends State<SessionElevenScreen> {

  List listData=[
    "Hamna Khan",
    "Saba ",
    "Hitesh",
    "Hina",
    "Sanna Khan",
    "Iram",
    "Saddam",
    "Hamna Khan",
    "Saba ",
    "Hitesh",
    "Hina",
    "Sanna Khan",
    "Iram",
  ];

  List<Map<String,dynamic >>  dynamicData=[
    {
      "name":"Shakir khan",
      "image":"assets/images/shakir.jpg",
      "des":"Flutter Developer And Trainer"
    },
    {
      "name":"Saba khan",
      "image":"assets/images/profile.png",
      "des":"Web Developer"
    } ,
    {
      "name":"Hitesh khan",
      "image":"assets/images/bg_blur_image.png",
      "des":"Desktop Developer"
    },
    {
      "name":"Hamna Khan",
      "image":"assets/images/bg_blur_image.png",
      "des":"Flutter Developer"

    }
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body:

        Column(
          children: [
            Expanded(
              child: Container(

                color: Colors.red,
                child: ListView.builder(
                  itemCount:listData.length,
                    itemBuilder: (context,index){
                      return   Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ListTile(
              
              
                          title: Text(listData[index],style: TextStyle(fontSize: 24,color: Colors.black),),
              
                        ),
                      );
                    }),
              ),
            ),
            Expanded(
              child: ListView.builder(
                  itemCount:dynamicData.length,
                  itemBuilder: (context,index){
                    return   Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ListTile(
                        leading: Image.asset(dynamicData[index]['image']),
                        onTap: (){
                          print("${index+1} "+dynamicData[index]['name']);
                        },
                        title: Text(dynamicData[index]['name'],style: TextStyle(fontSize: 24,color: Colors.black),),
                        subtitle: Text(dynamicData[index]['des']),
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
