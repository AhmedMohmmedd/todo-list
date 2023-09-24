import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../manger/task_cubit/task_view_cubit.dart';
import 'ToDo_listview_item.dart';

class ToDoListView extends StatefulWidget {
  ToDoListView({super.key, this.task, this.note, this.id ,this.formatcurentDate});
  String? task;
  String? note;
  int? id;
  String? formatcurentDate;


  @override
  State<ToDoListView> createState() => _ToDoListViewState();
}

class _ToDoListViewState extends State<ToDoListView> {
  @override
  initState() {
    BlocProvider.of<TaskViewCubit>(context).readData();
    
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TaskViewCubit, TaskViewState>(
      builder: (context, state) {
        if (state is TaskViewSucsess) {
          return ListView.builder(
            itemCount: BlocProvider.of<TaskViewCubit>(context).tasks.length,
            itemBuilder: (context, index) {
              // viewDataFromCubit(context, index);
              widget.task =
                  BlocProvider.of<TaskViewCubit>(context).tasks[index]['task'];
              widget.note =
                  BlocProvider.of<TaskViewCubit>(context).tasks[index]['note'];
              widget.formatcurentDate =
                  BlocProvider.of<TaskViewCubit>(context).tasks[index]['data'];
              widget.id =
                  BlocProvider.of<TaskViewCubit>(context).tasks[index]['id'];

              // BlocProvider.of<TaskViewCubit>(context).tasks.clear();

              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: ToDoItem(
                  id: widget.id!,
                  task: widget.task!,
                  formatcurentDate: widget.formatcurentDate!,
                  note: widget.note!,
                  index: index,
                ),
              );
            },
          );
        } else {
          return Center(child: Container());
        }
      },
    );
  }

  // void viewDataFromCubit(BuildContext context, int index) {
  //   widget.task = BlocProvider.of<TaskViewCubit>(context).tasks[index]['task'];
  //   widget.note = BlocProvider.of<TaskViewCubit>(context).tasks[index]['note'];
  //   widget.id = BlocProvider.of<TaskViewCubit>(context).tasks[index]['id'];
  // }
}



//  Navigator.of(context).push(MaterialPageRoute(
//                 builder: (context) => EditTaskView(
//                       task: tasks[index]['task'],
//                       note: tasks[index]['note'],
//                       id: tasks[index]['id'],
//                     ),),);



  // int response = await sqlDb.update("tasks" ,
  //                 {
  //                   "task" : "${task.text}",
  //                  "note" : "${note.text}",
  //                 },
  //                 "id = ${widget.id}"
  //                 );
  //               if (response > 0) {
  //                 Get.offAllNamed('/ToDoHomeView');
  //               }