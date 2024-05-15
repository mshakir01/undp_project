import 'package:flutter/material.dart';

class SessionFourteen extends StatefulWidget {
  const SessionFourteen({super.key});

  @override
  State<SessionFourteen> createState() => _SessionFourteenState();
}

class _SessionFourteenState extends State<SessionFourteen> {

  double changeSliderValue=10;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                        content: SnackBarAction(
                          textColor: Colors.white,
                      label: 'Show SnackBar Action ',
                      onPressed: () {
                        print("Snack Bar Testing");
                      },
                    )));
                  },
                  child: Text("Show SnackBar")),
              
              ElevatedButton(onPressed: (){
                showDialog(context: context,
                    builder: (BuildContext context) {
                  return   AlertDialog(
                    icon:const Icon(Icons.add_box_outlined),

                    title: const Column(
                      children: [
                        Text("Alert Message"),
                        Text("Do you want to delete"),

                      ],
                    ),

                    actions: [
                      InkWell(
                          onTap:(){
                            Navigator.pop(context);
                          },
                          child: const Text("Cancel")),
                    ],
                  );
                }
                  
                );
              }, child: const Text("Show Dialog Box")),

              const SizedBox(height: 40,),
              const LinearProgressIndicator(

                color: Colors.blue,

              ),
              const SizedBox(height: 40,),
              const Center(child: CircularProgressIndicator(
             strokeWidth: 2,
              ),),
              const SizedBox(height: 50,),
              Slider(
                thumbColor:Colors.pink ,
                divisions: 100,
                activeColor: Colors.green,
                inactiveColor: Colors.red,
                label: "${changeSliderValue}",
                max: 100,
                  min: 0,
                  value: changeSliderValue, onChanged: (newValue){
                  setState(() {
                    changeSliderValue=newValue;
                  });

              })


            ],
          ),
        ),
      ),
    );
  }
}
