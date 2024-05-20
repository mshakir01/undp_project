import 'package:flutter/material.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

import '../../constant/const_color.dart';
import '../../constant/const_style.dart';


class SessionThirteenAssignement extends StatefulWidget {
  const SessionThirteenAssignement({super.key});

  @override
  State<SessionThirteenAssignement> createState() =>
      _SessionThirteenAssignementState();
}

class _SessionThirteenAssignementState
    extends State<SessionThirteenAssignement> {
  String isRadioChange = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(top: 56, right: 16, left: 16),
        color: Colors.black,
        width: double.infinity,
        height: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
              Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.arrow_back,
                  color: redColor.value,
                  size: 24,
                ),
                Text(
                  "Wallet",
                  style: mediumTextStyleWhite
                ),
                SizedBox(
                  width: 24,
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40.0),
              child: Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    gradient: LinearGradient(colors: [
                      Colors.purple.withOpacity(.1),
                      Colors.pink.withOpacity(.1)
                    ])),
                child:   Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        GradientText(
                          'Good Job',
                          style:headingText,
                          colors: const [
                            Colors.purple,
                            Colors.pink,
                          ],
                        ),
                          Text(
                          "Current Balance",
                          style: mediumTextStyle
                        )
                      ],
                    ),
                    const Text(
                      "257\$",
                      style:headingText,
                    ),
                  ],
                ),
              ),
            ),
              Padding(
              padding: EdgeInsets.only(top: 24.0,bottom: 24),
              child: Text(
                "Withdrawing Method",
                style: mediumTextStyleWhite,
              ),
            ),

            Container(
              height: 56,
              decoration: BoxDecoration(
                border: Border.all(color: redColor.value.withOpacity(.7)),
                borderRadius: BorderRadius.circular(12),
              ),
              child: RadioListTile(
                title:   Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                      Text("Direct Transfer",style:mediumTextStyle,),
                    Image.asset("assets/images/ApplePay.png",width: 40,height: 40,)
                  ],
                ),
                value: "Option 1", groupValue: isRadioChange, onChanged: (newVal){
                  setState(() {
                    isRadioChange=newVal!;
                  });

              },),
            ),
            const SizedBox(height: 16,),
            Container(
              height: 56,
              decoration: BoxDecoration(
                border: Border.all(color: redColor.value.withOpacity(.7)),
                borderRadius: BorderRadius.circular(12),
              ),
              child: RadioListTile(
                title:   Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                      Text("Direct Transfer",style:mediumTextStyle,),
                    Image.asset("assets/images/visa-logo.png",width: 40,height: 40,)
                  ],
                ),
                value: "Option 2", groupValue: isRadioChange, onChanged: (newVal){
                  setState(() {
                    isRadioChange=newVal!;
                  });

              },),
            ),
            const SizedBox(height: 16,),
            Container(
              height: 56,
              decoration: BoxDecoration(
                border: Border.all(color:redColor.value.withOpacity(.7)),
                borderRadius: BorderRadius.circular(12),
              ),
              child: RadioListTile(
                title:   Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                      Text("Direct Transfer",style: mediumTextStyle,),
                   Image.asset("assets/images/Shop Pay.png",width: 40,height: 40,),
                  ],
                ),
                value: "Option 3", groupValue: isRadioChange, onChanged: (newVal){
                  setState(() {
                    isRadioChange=newVal!;
                  });

              },),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: Container(
                width: double.infinity,
                height: 56,
                decoration: BoxDecoration(
                    border: const GradientBoxBorder(
                      gradient: LinearGradient(colors: [Colors.purple, Colors.pink]),
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(12)
                ),
                child:   Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.add_box_outlined,color: redColor.value,size: 32,),
                    SizedBox(width: 16,),
                    Text("Add New Withdrawal Method",style: mediumTextStyleWhite,)
                  ],
                ),
              ),
            ),


            Padding(
              padding: const EdgeInsets.only(top: 64.0),
              child: Container(
                alignment: Alignment.center,
                width: double.infinity,
                height: 56,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  gradient:   LinearGradient(colors: [Colors.pink, Colors.purple]),

                ),
                child:   Text("Balance Withdrawal",style: mediumTextStyleWhite,),
              ),
            )

          ],
        ),
      ),
    );
  }
}
