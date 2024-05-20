import 'package:flutter/material.dart';
import '../../constant/const_style.dart';

class CommonButton extends StatelessWidget {

  String title;
  Function() onTap;
  Color bgColor;
  Image image;
  CommonButton({super.key, required this.title,required this.onTap,required this.bgColor,required this.image});
  @override
  Widget build(BuildContext context) {
    return  InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(left: 16.0,right: 16,top: 16),
        child: Container(
          height: 56,
          alignment: Alignment.center,
          width: double.infinity,
          decoration: BoxDecoration(
            color: bgColor,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: image,
              ),
              Text(title,style: buttonStyle,),
            ],
          ),

        ),
      ),
    );
  }
}




