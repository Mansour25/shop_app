import 'package:flutter/material.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const   [
          Image(
            image: AssetImage('assets/images/img_one.png'),
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            'Screen Title',
            style: TextStyle(
              fontSize: 24,
            ),
          ),
          SizedBox(
            height: 15,
          ),
        ],
      ),

    );
  }
}
