import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SessionSixteen extends StatefulWidget {
  const SessionSixteen({super.key});

  @override
  State<SessionSixteen> createState() => _SessionSixteenState();
}

class _SessionSixteenState extends State<SessionSixteen> {
  String value = 'Male';
  List<String> listData = <String>['Male', 'Female', 'Other'];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            color: Colors.grey.withOpacity(.5),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
            height: 300,
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Colors.purple,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(48),
                  bottomRight: Radius.circular(48)),
            ),
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.menu,
                      color: Colors.white,
                    ),
                    Icon(
                      Icons.person,
                      color: Colors.white,
                    )
                  ],
                ),
                SizedBox(height: 80,),
                Column(
                  children: [
                    Text(
                      "Dummy Text",
                      style: TextStyle(fontSize: 12, color: Colors.white),
                    ),
                    Text(
                      "Bus",
                      style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ],
                )
              ],
            ),
          ),
          Positioned(
            bottom: 120,
            left: 20,
            child: SizedBox(
              width: 400,
              height: 600,
              // color: Colors.green,
              child: Column(
                children: [
                  Container(
                    width:400,
                    height: 200,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(24),
                    ),
                    child: Column(
                      children: [


                      ],

                    ),
                  ) ,
                  SizedBox(height: 24,),
                  Container(
                    width:400,
                    height: 200,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(24),
                    ),
                    child: Column(
                      children: [


                      ],

                    ),
                  ),
                  SizedBox(height: 24,),
                  Container(
                    alignment: Alignment.center,
                    height: 60,
                    width: 200,
                    decoration: BoxDecoration(
                      color: Colors.purple,
                      borderRadius: BorderRadius.circular(24)
                    ),
                    child: const Text("SEARCH",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold,color: Colors.white),),
                  )
                ],
              ),
            ),

          )
        ],
      )

//         Container(
//           width: double.infinity,
//           height: double.infinity,
//           color: Colors.grey,
//           child:   Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//              /* Drop Button
//               Container(
//                 color: Colors.red,
//                 width: 200,
//                 alignment: Alignment.center,
//                 child: DropdownButton<String>(
//                   value: value,
//                   items: listData.map((String item) {
//                     return DropdownMenuItem<String>(
//                       value: item,
//                       child: Text(item),
//                     );
//                   }).toList(),
//                   onChanged: (String? newValue) {
//                     setState(() {
//                       value = newValue!;
//                     });
//                   },
//                 ),
//               ),
//               */
// //Just sample example
//               // Stack(
//               //   children: [
//               //
//               //     Container(
//               //       height: 200,
//               //       width: 200,
//               //       color: Colors.red,
//               //     ),
//               //     Positioned(
//               //       right: 0,
//               //       child: Container(
//               //         height: 150,
//               //         width: 150,
//               //         color: Colors.yellow,
//               //       ),
//               //     ),
//               //     Container(
//               //       height: 100,
//               //       width: 100,
//               //       color: Colors.green,
//               //     ),
//               //     Positioned(
//               //       bottom: 20,
//               //       right: 0,
//               //       child: Container(
//               //         height: 50,
//               //         width: 50,
//               //         color: Colors.pink,
//               //       ),
//               //     ),
//               //
//               //   ],
//               // )
//
//
//
//             ],
//           ),
//         ),
          ),
    );
  }
}
