
import 'package:flutter/material.dart';

import '../../../../constanis.dart';

class CustomTasksDetalisItem extends StatelessWidget {
   CustomTasksDetalisItem({
    super.key,
    required this.text,
    required this.number,
  });
  final String text;
   int? number ;
  @override
      // KcolorControler kcolorControler = KcolorControler();

  Widget build(BuildContext context) {
    return Container(
      width: 300,
      // width: 150,
      height: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(08),
        color:kPrimaryColor,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("${number}", style: TextStyle(fontWeight: FontWeight.bold)),
          const SizedBox(
            height: 10,
          ),
          Text(
            text,
            style: TextStyle(fontWeight: FontWeight.w400),
          ),
        ],
      ),
    );
  }
}
