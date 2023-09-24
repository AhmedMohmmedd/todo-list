import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todolist/toDoList/features/presentation/views/to_do_home_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';

import '../../../../constanis.dart';
import '../../../../core/app_rote.dart';

class CustomBottomShet extends StatelessWidget {
   CustomBottomShet({
    super.key,
  });
      // KcolorControler kcolorControler = KcolorControler();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16), color:kPrimaryColor),
      child: MaterialButton(
        onPressed: () {
          Get.toNamed('/AddTaskView');
        },
        child: const Icon(
          Icons.add,
          size: 42,
        ),
      ),
    );
  }
}
