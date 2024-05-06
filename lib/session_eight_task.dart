

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SessionEightTask extends StatefulWidget {
  const SessionEightTask({super.key});

  @override
  State<SessionEightTask> createState() => _SessionEightTaskState();
}

class _SessionEightTaskState extends State<SessionEightTask> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          alignment: Alignment.center,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
                colors: [
              Colors.purple,
              Colors.black,
              Colors.black,
              Colors.black,
              Colors.black,
              Colors.black,
              Colors.purple,
            ])
          ),
            child:   Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:[
                    const Text("Welcome Back !",style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),),
                    SizedBox(
                      height: 8,
                    ),
                    Text("We're Glad to Have you back to Login",style: TextStyle(fontSize: 16,color: Colors.white),),
                    SizedBox(
                      height: 24,
                    ),
                    TextField(
                      style: TextStyle(fontSize: 18,color: Colors.white,fontWeight: FontWeight.bold),
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        label: Text("Email Password",),
                        labelStyle: TextStyle(fontSize: 12,color: Colors.grey),
                        hintText: "Email "
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    TextField(
                      style: TextStyle(fontSize: 18,color: Colors.white,fontWeight: FontWeight.bold),
                      decoration: InputDecoration(
                        suffixIcon: Icon(Icons.remove_red_eye,size: 32,),
                          border: OutlineInputBorder(),
                        label: Text("Password",),
                        labelStyle: TextStyle(fontSize: 12,color: Colors.grey),
                        hintText: "Password"
                      ),
                    ),

                    SizedBox(height: 16,),


                    Align(
                      alignment: Alignment.centerRight,
                        child: Text("Forgot Password!",style: TextStyle(color: Colors.blue,fontSize: 16),)),
                    // CustomButton(),
                    SizedBox(height: 16,),
                    Container(
                      alignment: Alignment.center,
                      width: double.infinity,
                      height: 56,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                            end: Alignment.topRight,
                            colors: [
                          Colors.purple,
                          Colors.pink,
                        ])
                      ),
                      child: Text("Login",style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w500),),
                    ),
                    SizedBox(height: 24,),

                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: Row(
                        children: [
                          Expanded(child: Divider(thickness: .7,color: Colors.grey )),
                          SizedBox(width: 16,),
                          Text("or With Login",style: TextStyle(fontSize: 16,color: Colors.grey),),
                          SizedBox(width: 16,),
                          Expanded(child: Divider(thickness: .7,color: Colors.grey, )),
                        ],
                      ),
                    ),
                    SizedBox(height: 24,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,

                        children:[

                          Container(
                            width: 60,
                            height: 60,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey),
                              shape: BoxShape.circle
                            ),
                            child: Icon(Icons.facebook,color: Colors.blue,size: 32,),
                          ),
                          Container(
                            width: 60,
                            height: 60,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey),
                              shape: BoxShape.circle
                            ),
                            child:  Image.network(
                                height: 30,
                                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSDgSeFdPMSRAQXRtuGG_SrMY5nY-_FYCV0SwxZr1whlw&s"),

                          ),
                          Container(
                            width: 60,
                            height: 60,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey),
                              shape: BoxShape.circle
                            ),
                            child: Icon(Icons.apple,color: Colors.grey,size: 32,),
                          ),

                        ]),

                    SizedBox(height: 40,),
                    //
                    // ClipRRect(
                    //   borderRadius: BorderRadius.circular(10),
                    //   child:  Image.network(
                    //     width: 100,
                    //       height: 100,
                    //       "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSDgSeFdPMSRAQXRtuGG_SrMY5nY-_FYCV0SwxZr1whlw&s"),
                    //
                    // ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                        children:[
                    Text("Don't have an Account!",style: TextStyle(fontSize: 16,color: Colors.white),),
                        SizedBox(width: 4,),
                        Text("SignUp",style: TextStyle(fontSize: 16,color: Colors.blue),),
                        ])
                  ]
              ),
            )
        )
    );
  }
}
