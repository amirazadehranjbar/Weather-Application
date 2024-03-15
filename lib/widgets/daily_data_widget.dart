import 'package:flutter/material.dart';

import '../model/list_data.dart';
import '../textStyels_Colors/my_text_styles.dart';

class DailyDataWidget extends StatelessWidget {
  const DailyDataWidget({super.key, required this.index});

  final int index;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text("sunday", style: MyTextStyles.small_black),
      leading: Image.asset(myData[index].imageData),
      trailing:Text("17 oC",style: MyTextStyles.medium_black),);
  }
}
