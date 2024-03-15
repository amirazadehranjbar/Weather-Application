import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import '../textStyels_Colors/my_text_styles.dart';

class MyListViewWidget extends StatelessWidget {
  const MyListViewWidget(
      {super.key,
      required this.time,
      required this.imagePath,
      required this.degree});

  final String time;
  final String imagePath;
  final String degree;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Adaptive.h(20),
      width: Adaptive.w(22),
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [
          Color.fromARGB(255, 83, 168, 245),
          Color.fromARGB(255, 4, 92, 176),
        ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Color.fromARGB(80, 80, 80, 80), width: 3),
      ),
      padding: EdgeInsets.all(8),
      margin: EdgeInsets.all(8),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            time,
            style: MyTextStyles.small_white,
          ),
          Image.asset(
            imagePath,
            height: Adaptive.h(8),
          ),
          Text(
            degree,
            style: MyTextStyles.medium_white,
          ),
        ],
      ),
    );
  }
}
