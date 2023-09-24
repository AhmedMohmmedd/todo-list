import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:meta/meta.dart';

import '../../../data/sql_db.dart';

part 'edit_task_state.dart';

class EditTaskCubit extends Cubit<EditTaskState> {

    SqlDb sqlDb = SqlDb();


  EditTaskCubit() : super(EditTaskInitial());

   Future edittask(
      {String? task, String? note ,int? id}) async {
    emit(EditTaskLoding());
    try {
       int response = await sqlDb.update("tasks" ,
                  {
                    "task" : task!,
                   "note" : note!,
                  },
                  "id = $id"
                  );
               
      if (response > 0) {
        emit(EditTaskSuccess());
      }
    } catch (e) {
      emit(EditTaskFaluier());
    }
  }
}
