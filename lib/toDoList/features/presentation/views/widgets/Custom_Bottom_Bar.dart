import 'package:todolist/toDoList/features/presentation/views/to_do_home_view.dart';
import 'package:todolist/toDoList/features/presentation/views/widgets/Custom_Bottom_Shet.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../constanis.dart';

class CustomBottomBar extends StatelessWidget {
   CustomBottomBar({
    this.onTapToAcount,
    this.onTapToHome,
    super.key,
  });
    void Function()? onTapToHome;
    void Function()? onTapToAcount;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        GestureDetector(
          onTap: onTapToHome,
          child:  Icon(
            Icons.list,
            size: 35,
            color: scandPrimaryColor,
          ),
        ),
        CustomBottomShet(),
        GestureDetector(
          onTap:onTapToAcount,
         
          child: const Icon(Icons.person_2_sharp, size: 28),
        ),
      ],
    );
  }
}
