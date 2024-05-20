import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/instance_manager.dart';
import 'package:get/route_manager.dart';
import 'package:undp_project/controller/appController.dart';
import 'package:undp_project/view/screens/session_eight.dart';
import 'package:undp_project/view/screens/session_twel_screen.dart';
import '../../../constant/const_color.dart';
import '../../../constant/const_style.dart';
import '../../../constant/const_text.dart';
import '../../common_component /common_button.dart';
import '../session_eighteen.dart';
final appController = Get.find<AppController>();
class SessionNineteen extends StatelessWidget {
  const SessionNineteen({super.key});


  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CommonButton(
              title: 'Session Eighteen Screen',
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SessionEighteen()));
              },
              bgColor: redColor.value,
              image: Image.asset(
                "assets/images/visa-logo.png",
                width: 32,
              ),
            ),
            CommonButton(
              title: title,
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => SessionTwelveScreen()));
              },
              bgColor: redColor.value,
              image: Image.asset(
                "assets/images/visa-logo.png",
                width: 32,
              ),
            ),
            CommonButton(
              title: 'Session Eight Screen',
              onTap: () {
                // Navigator.push(context, MaterialPageRoute(builder:
                // (context)=>SessionEight()));
                //
                Get.to(const SessionEight());
              },
              bgColor: redColor.value,
              image: Image.asset(
                "assets/images/visa-logo.png",
                width: 32,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Checkbox(value: appController.isChecked.value,
                    onChanged: (newValue) {
                  appController.isChecked.value=newValue!;
                    }),

                Text(
                  "Dummy Text",
                  style: buttonStyle.copyWith(color: Colors.red),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
