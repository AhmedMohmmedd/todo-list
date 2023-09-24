
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todolist/toDoList/constanis.dart';

import '../local/local_controler.dart';

class LanguageSection extends StatelessWidget {
  const LanguageSection({
    super.key,
    required this.controler,
  });

  final LocalControler controler;

  @override
  Widget build(BuildContext context) {
    return Row(

        mainAxisAlignment: MainAxisAlignment.center,
        children: [
CustomBotton(
              onPressed: ()  {
                        controler.changlang('en');

              },
              text: ('englis' .tr),
              fontSize: 16,
              backgroundColor: Colors.green,
              textColor: Colors.white,
              borderRadius: const BorderRadius.only(
                  // topRight: Radius.circular(16),
                  // bottomRight: Radius.circular(12)
                  ),
            ),
CustomBotton(
              onPressed: ()  {
                        controler.changlang('ar');

              },
              text: ('arbic' .tr),
              fontSize: 16,
              backgroundColor: scandPrimaryColor,
              textColor: Colors.white,
              borderRadius: const BorderRadius.only(
                  // topRight: Radius.circular(16),
                  // bottomRight: Radius.circular(12),
                  ),
            ),
          
    
        ],
      );
  }
}





class CustomBotton extends StatelessWidget {
  const CustomBotton({
    super.key,
    required this.backgroundColor,
    required this.textColor,
    this.borderRadius,
    required this.text, this.fontSize, this.onPressed,
    // this.fontSize, this.onPressed,
  });
  final Color backgroundColor;
  final Color textColor;
  final BorderRadius? borderRadius;
  final String text;
  final double? fontSize;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45,
      width: 150,
      child: TextButton(
          onPressed:onPressed,
          style: TextButton.styleFrom(
            backgroundColor: backgroundColor,
            shape: RoundedRectangleBorder(
              // borderRadius: borderRadius ?? BorderRadius.circular(16),
              borderRadius: BorderRadius.circular(2)
            ),
          ),
          child: Text(
            text,
            style: TextStyle(
              
                color: textColor,
                fontWeight: FontWeight.w900,
                fontSize: fontSize),
          )),
    );
  }
}






// CustomBotton(
//               onPressed: ()  {
//                 launchCustomUrl(context, bookModel.volumeInfo.previewLink);
//               },
//               text: getText(bookModel),
//               fontSize: 16,
//               backgroundColor: Color(0xffEF8262),
//               textColor: Colors.white,
//               borderRadius: const BorderRadius.only(
//                   topRight: Radius.circular(16),
//                   bottomRight: Radius.circular(12)),
//             ),