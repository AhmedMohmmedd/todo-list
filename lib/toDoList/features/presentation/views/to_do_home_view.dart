import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todolist/toDoList/constanis.dart';
import 'package:todolist/toDoList/features/presentation/views/widgets/Custom_Bottom_Bar.dart';
import 'package:todolist/toDoList/features/presentation/views/widgets/ToDo_ListView.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../manger/task_cubit/task_view_cubit.dart';

class ToDoHomeView extends StatelessWidget {
  const ToDoHomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: .2,
        title:  Center(
          child: Text(
            'tasks'.tr,
            style: TextStyle(color: Colors.black, fontSize: 28),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15, top: 30),
        child: Column(
          children: [
            Expanded(child: ToDoListView()),
             CustomBottomBar(
              onTapToAcount:  () {
            Get.offAllNamed('/AcounteView');
          },
            ),
          ],
        ),
      ),
    );
  }
}

//  select(String table) async {
  //   Database? mydb = await db;
  //   List<Map> response = await mydb!.query(table);
  //   return response;
  // }

  // insert(String table , Map<String, Object?>values) async {
  //   Database? mydb = await db;
  //   int response = await mydb!.insert(table , values);
  //   return response;
  // }

  // update(String table , Map<String, Object?>values ,String? mywhere) async {
  //   Database? mydb = await db;
  //   int response = await mydb!.update(table , values , where: mywhere);
  //   return response;
  // }

  // delet(String table ,String? mywhere) async {
  //   Database? mydb = await db;
  //   int response = await mydb!.delete(table ,where: mywhere);
  //   return response;
  // }