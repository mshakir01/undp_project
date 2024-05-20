import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:undp_project/view/screens/sesson_eighteen_second.dart';

class SessionEighteen extends StatefulWidget {
  const SessionEighteen({super.key});

  @override
  State<SessionEighteen> createState() => _SessionEighteenState();
}

class _SessionEighteenState extends State<SessionEighteen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RatingBar(
              initialRating: 3,
              direction: Axis.horizontal,
              allowHalfRating: true,
              itemCount: 5,
              ratingWidget: RatingWidget(
                full: _image('assets/heart.png'),
                half: _image('assets/heart_half.png'),
                empty: _image('assets/heart_border.png'),
              ),
              itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
              onRatingUpdate: (rating) {
                print(rating);
              },
            ),
            InkWell(
              onTap: () {
                print("Testing RichText");
              },
              child: RichText(
                text: const TextSpan(
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                    children: [
                      TextSpan(
                          text: "Hello ",
                          style: TextStyle(color: Colors.red, fontSize: 40)),
                      TextSpan(
                          text: "World ",
                          style: TextStyle(color: Colors.blue, fontSize: 40)),
                      TextSpan(text: "I'm Flutter Developer, I'm Here"),
                    ]),
              ),
            ),
            InkWell(
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => const SessionEighteenSecond()));

                },
              child: Padding(
                padding: const EdgeInsets.only(left: 24.0, right: 24, top: 32),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(16)),
                  alignment: Alignment.center,
                  width: double.infinity,
                  height: 56,
                  child: const Text(
                    "Next Screen",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              ),
            ),
            GestureDetector(
              onDoubleTap: () {
                print("GestureDetector Button ");
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 24.0, right: 24, top: 32),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(16)),
                  alignment: Alignment.center,
                  width: double.infinity,
                  height: 56,
                  child: const Text(
                    "GestureDetector Button",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            RatingBar.builder(
              initialRating: 0,
              minRating: 1,
              direction: Axis.horizontal,
              allowHalfRating: true,
              itemCount: 5,
              itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
              itemBuilder: (context, _) => const Icon(
                Icons.star,
                color: Colors.amber,
              ),
              onRatingUpdate: (rating) {
                print(rating);
              },
            ),
          ],
        ),
      ),
    );
  }
}

Widget _image(String asset) {
  return Image.asset(
    asset,
    height: 30.0,
    width: 30.0,
    color: Colors.amber,
  );
}
