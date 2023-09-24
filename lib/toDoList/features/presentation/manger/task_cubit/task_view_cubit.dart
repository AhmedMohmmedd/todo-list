import 'dart:collection';

import 'package:bloc/bloc.dart';
import 'package:get/get.dart';
import 'package:meta/meta.dart';
import 'package:todolist/toDoList/features/data/models/task_model.dart';
import 'package:todolist/toDoList/features/data/sql_db.dart';
import 'package:flutter/material.dart';

import '../../../../constanis.dart';
part 'task_view_state.dart';

class TaskViewCubit extends Cubit<TaskViewState> {
  TaskViewCubit({this.task, this.note, this.index, this.taskModel})
      : super(TaskViewInitial());
  final TaskModel? taskModel;
  SqlDb sqlDb = SqlDb();
  List<Map> tasks = [];
  String? task;
  String? note;
  int? index;

  Future readData() async {
    tasks.clear();
    List<Map> rsponse = await sqlDb.select("tasks");
    tasks.addAll(rsponse.toList());
    // tasks.clear();
    emit(TaskViewSucsess());
  }

  Future deletData(int index) async {
    int response = await sqlDb.delet("tasks", "id = ${tasks[index]['id']} ");
    if (response > 0) {
       tasks.removeWhere((elment) =>
                              elment['id'] == tasks[index]['id']);
      emit(TaskViewSucsess());
    }
  }


// void doneColorHandelar(int index)  {
//   kiconColor= Colors.red;
//     kiconColor2 = Colors.black;
//       emit(TaskViewSucsess());
//     }
  }

  



//Future deletData(int index) async {
  //   // int response = await sqlDb
  //   //     .deletData("DELETE FROM tasks WHERE id= ${tasks[index]['id']}");
  //   int response = await sqlDb.delet("tasks", "id = ${tasks[index]['id']} ");
  // }

            // BlocProvider.of<NotesCubit>(context).fatchAllNotes();
