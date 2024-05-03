import 'package:flutter/material.dart';

class SessionEight extends StatefulWidget {
  const SessionEight({super.key});

  @override
  State<SessionEight> createState() => _SessionEightState();
}

class _SessionEightState extends State<SessionEight> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Container(
            //   child: ElevatedButton(
            //       style: ElevatedButton.styleFrom(
            //           backgroundColor: Colors.black,
            //           textStyle: TextStyle(
            //             color: Colors.green,
            //             fontSize: 32,
            //           )),
            //       onPressed: () {},
            //       child: Text("Button")),
            // ),
            // IconButton(onPressed: () {}, icon: Icon(Icons.abc)),
            // Padding(
            //   padding: const EdgeInsets.symmetric(horizontal: 24.0),
            //   child: InkWell(
            //     onDoubleTap: () {
            //       print("Use InkWell on Double Tap ");
            //     },
            //     onTap: () {},
            //     child: Container(
            //       decoration: BoxDecoration(
            //           // color: Color(0xff00DCFB),
            //           gradient:
            //               LinearGradient(
            //                 begin: Alignment.topLeft,
            //                   end: Alignment.topRight,
            //                   colors:
            //               [
            //                 Colors.red,
            //                 Colors.green,
            //                 Colors.pink,
            //                 Colors.amber
            //               ]),
            //           borderRadius: BorderRadius.circular(32)),
            //       alignment: Alignment.center,
            //       width: double.infinity,
            //       height: 56,
            //       child: Text(
            //         "Use InkWell",
            //         style: TextStyle(fontSize: 16, color: Colors.white),
            //       ),
            //     ),
            //   ),
            // ),
            // Padding(
            //   padding:
            //       const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16),
            //   child: GestureDetector(
            //     onTap: () {
            //       print("User GestureDetector ");
            //     },
            //     child: Container(
            //       decoration: BoxDecoration(
            //           color: Color(0xff00DCFB),
            //           borderRadius: BorderRadius.circular(32)),
            //       alignment: Alignment.center,
            //       width: double.infinity,
            //       height: 56,
            //       child: Text(
            //         "User GestureDetector",
            //         style: TextStyle(fontSize: 16, color: Colors.white),
            //       ),
            //     ),
            //   ),
            // ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.red,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.pink,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(24),
                        topLeft: Radius.circular(24),
                        bottomLeft: Radius.circular(24),
                        bottomRight: Radius.circular(80)
                      )
                  ),
                  width: 100,
                  height: 100,
                ),
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.yellow,
                ),


              ],
            ),
            // Image.asset("name"),

            Image.network(
              height: 100,
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSDgSeFdPMSRAQXRtuGG_SrMY5nY-_FYCV0SwxZr1whlw&s"),

            Image.asset(
              width: 200,
                height: 200,
                "assets/images/profile.png"),

            Image.asset(
              width: 200,
                height: 200,
                "assets/images/shakir.jpg"),
          ],
        ),
      ),
    );
  }
}
