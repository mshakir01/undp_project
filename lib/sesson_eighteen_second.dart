import 'package:flutter/material.dart';

class SessionEighteenSecond extends StatefulWidget {
  const SessionEighteenSecond({super.key});

  @override
  State<SessionEighteenSecond> createState() => _SessionEighteenSecondState();
}

class _SessionEighteenSecondState extends State<SessionEighteenSecond> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: const EdgeInsets.only(left: 24),
          color: Colors.red,
          width: double.infinity,
          height: double.infinity,
          child:   Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
      
              InkWell(
                onTap:(){

                  Navigator.pop(context);
                },

                  child: Icon(Icons.arrow_back,color: Colors.white,size: 40,)),

              SizedBox(height: 40,),
              Text("Session Eighteen Second Class",style: TextStyle(color: Colors.white,fontSize: 32,fontWeight: FontWeight.bold,fontStyle: FontStyle.italic),),
      
            ],
          ),
        ),
      ),
    );
  }
}
