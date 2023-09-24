import 'package:flutter/widgets.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'core/colors.dart';
import 'core/local/local_controler.dart';

dynamic kPrimaryColor = Color.fromARGB(59, 167, 155, 155);
dynamic scandPrimaryColor = Color(0xffEF8262);

// class KcolorControler {
//   String? prefVlue ;
//   getPrefs() async {
//     SharedPreferences? prefe = await SharedPreferences.getInstance();
//     prefVlue = prefe.getString('color');
//     // print('${prefVlue}');
//   }

//   dynamic kPrimaryColor=  Color.fromARGB(59, 167, 155, 155);

//   setColors() {
//     if (prefVlue == null) {
//       kPrimaryColor = Color.fromARGB(59, 167, 155, 155);
//     } else if (prefVlue == '1') {
//       kPrimaryColor = const Color.fromARGB(255, 69, 201, 73);
//     }
//     return kPrimaryColor;
//   }
// }





// Color.fromARGB(59, 167, 155, 155) :