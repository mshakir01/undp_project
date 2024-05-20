import 'package:flutter/material.dart';

class SessionTenSecPage extends StatefulWidget {
  const SessionTenSecPage({super.key});

  @override
  State<SessionTenSecPage> createState() => _SessionTenSecPageState();
}

class _SessionTenSecPageState extends State<SessionTenSecPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("ListView Builder")
        ,),
      body: ListView.builder(
        itemCount: 30,

        itemBuilder: (context,index){
       return Padding(
         padding: const EdgeInsets.all(8.0),
         child: Container(
           width: 180,
           height: 200,
           decoration: BoxDecoration(
               color: Colors.black38,
               borderRadius: BorderRadius.circular(16)),
           child: Column(
             mainAxisAlignment: MainAxisAlignment.center,
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               Center(
                 child: Container(
                   padding: EdgeInsets.all(32),
                   decoration: const BoxDecoration(
                     color: Colors.deepOrangeAccent,
                     shape: BoxShape.circle,
                   ),
                   child: const Text(
                     "S",
                     style: TextStyle(
                       fontSize: 48,
                       color: Colors.white,
                       fontWeight: FontWeight.normal,
                     ),
                   ),
                 ),
               ),
                 Padding(
                 padding: EdgeInsets.only(left: 16.0),
                 child: Text(
                   "Sitara Gul ${index.toString()}",
                   style: TextStyle(
                       fontSize: 18,
                       color: Colors.white,
                       fontWeight: FontWeight.bold),
                 ),
               ),
             ],
           ),
         ),
       );
      }),
    );
  }
}
