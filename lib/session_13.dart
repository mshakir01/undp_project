import 'package:flutter/material.dart';

class Session13 extends StatefulWidget {
  const Session13({super.key});

  @override
  State<Session13> createState() => _Session13State();
}

class _Session13State extends State<Session13> {
  bool isChecked = false;
  bool isOn=true;
  String selectedOption='Option 1';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(

        floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
        floatingActionButton: FloatingActionButton.small(
          backgroundColor: Colors.red,
           shape: RoundedRectangleBorder(
             borderRadius: BorderRadius.circular(100)
           ),
          onPressed: () {
            showModalBottomSheet(
                context: context, builder: (context){
              return Container(
                width: double.infinity,
                height: 200,
                color: Colors.white,
                padding: EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    Row(
                      children: [
                        Icon(Icons.share,color: Colors.black.withOpacity(.7),),
                        SizedBox(width: 30,),
                        Text("Share",style: TextStyle(fontSize: 20,fontWeight: FontWeight.normal),)
                      ],
                    ),

                    Row(
                      children: [
                        Icon(Icons.link,color: Colors.black.withOpacity(.7),),
                        SizedBox(width: 30,),
                        Text("Link",style: TextStyle(fontSize: 20,fontWeight: FontWeight.normal),)
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.edit,color: Colors.black.withOpacity(.7),),
                        SizedBox(width: 30,),
                        Text("Edit Name",style: TextStyle(fontSize: 20,fontWeight: FontWeight.normal),)
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.delete,color: Colors.black.withOpacity(.7),),
                        SizedBox(width: 30,),
                        Text("Delete Collection",style: TextStyle(fontSize: 20,fontWeight: FontWeight.normal),)
                      ],
                    ),

                  ]
                ),
              );
            });
          },
          child: const Icon(Icons.add),
          // child:const Icon(Icons.add),
        ),
        body: Container(
          padding: const EdgeInsets.all(16),
          color: Colors.white,
          width: double.infinity,
          height: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Container(
              //   width: double.infinity,
              //   height: 50,
              //   color: Colors.yellow,
              // ),
              Row(
                children: [
                  Checkbox(
                    activeColor: Colors.red,
                      checkColor:Colors.green,
                      value: isChecked,
                      hoverColor: Colors.black,
                      onChanged: (val) {
                        setState(() {
                          isChecked = val!;
                        });
                      }),
                  const Text(" Are you Agree",)
                ],

              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text("Notification"),
                  Switch(
                      inactiveThumbColor: Colors.red,
                      activeColor: Colors.black,
                      activeTrackColor: Colors.green,
                      inactiveTrackColor: Colors.yellow,
                      value: isOn, onChanged: (val ){

                    setState(() {
                      isOn=val;

                    });



                  }),
                ],
              ),

              Text("Select Gender",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 24),),
              Row(
                children: [

                  Radio(value: "Option 1", groupValue: selectedOption, onChanged: (newVal){

                    setState(() {
                      selectedOption=newVal!;
                    });
                  }),

                  Text("Male",style: TextStyle(color: Colors.black,),),
                ],
              ),
              Row(
               children: [
                 Radio(value: "Option 2", groupValue: selectedOption, onChanged: (newVal){

                    setState(() {
                      selectedOption=newVal!;
                    });
                  }),

                 Text("Male",style: TextStyle(color: Colors.black,),),
               ],
             ),
              Row(
               children: [
                 Radio(value: "Option 3", groupValue: selectedOption, onChanged: (newVal){

                    setState(() {
                      selectedOption=newVal!;
                    });
                  }),

                 Text("Other",style: TextStyle(color: Colors.black,),),
               ],
             ),


              Container(

              )



            ],
          ),
        ),
      ),
    );
  }
}
