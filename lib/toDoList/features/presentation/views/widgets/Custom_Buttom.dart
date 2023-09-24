
import 'package:flutter/material.dart';

import '../../../../constanis.dart';

class CustomButtom extends StatelessWidget {
   CustomButtom({
    super.key,
    this.onpressed, required this.title,
  });
  final void Function()? onpressed;
  final String title;
      // KcolorControler kcolorControler = KcolorControler();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 50,
      child: MaterialButton(
        elevation: 0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        color:kPrimaryColor,
        onPressed: onpressed,
        child:  Text(
          title,
          style: const TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}