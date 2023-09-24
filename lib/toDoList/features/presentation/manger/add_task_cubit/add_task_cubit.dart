import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:todolist/toDoList/features/data/sql_db.dart';

part 'add_task_state.dart';

class AddtaskCubit extends Cubit<AddtaskState> {
  SqlDb sqlDb = SqlDb();
  // var curentDate;
  // var formatcurentDate;
//  String formatcurentDate =
//                     DateFormat('dd-M-yyyy   H.mm').format( DateTime.now());
  AddtaskCubit() : super(AddtaskInitial());
  Future addtask(
      {TextEditingController? title, TextEditingController? note , String? formatcurentDate}) async {
    emit(AddTaskLoding());
    try {
      int response = await sqlDb.insert(
        "tasks",
        {
          "task": title!.text,
          "note": note!.text,
          "data": formatcurentDate!,
        },
      );
      if (response > 0) {
        // var curentDate = DateTime.now();
        // var formatcurentDate = DateFormat('dd-M-yyyy   H.mm').format(curentDate);
        emit(AddTaskSucsess());
      }
    } catch (e) {
      emit(AddTaskFaluier());
    }
  }
}



//  var curentDate = DateTime.now();
//                   var formatcurentDate =
//                       DateFormat('dd-M-yyyy   H.mm').format(curentDate);