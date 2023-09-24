import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todolist/toDoList/features/presentation/manger/edit_task_cubit/edit_task_cubit.dart';
import 'package:todolist/toDoList/features/presentation/views/widgets/Custom_Buttom.dart';
import 'package:todolist/toDoList/features/presentation/views/widgets/Custom_Page_Title.dart';
import 'package:todolist/toDoList/features/presentation/views/widgets/Custom_Text_Felid.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../data/sql_db.dart';

class EditTaskView extends StatefulWidget {
  const EditTaskView({super.key, this.task, this.note, this.id});
  final task;
  final note;
  final id;
  @override
  State<EditTaskView> createState() => _EditTaskViewState();
}

class _EditTaskViewState extends State<EditTaskView> {
  SqlDb sqlDb = Get.put(SqlDb());
  TextEditingController task = TextEditingController();
  TextEditingController note = TextEditingController();

  @override
  void initState() {
    task.text = widget.task;
    note.text = widget.note;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15, top: 100),
        child: Column(
          children: [
             CustomPageTitle(
              title: 'edite task'.tr,
            ),
            const SizedBox(
              height: 30,
            ),
            CustomTextFelid(
              controller: task,
              hint: 'title'.tr,
            ),
            const SizedBox(
              height: 15,
            ),
            CustomTextFelid(
              controller: note,
              hint: 'content'.tr,
              maxlines: 3,
            ),
            const SizedBox(
              height: 50,
            ),
            CustomButtom(
              title: 'edit'.tr,
              onpressed: () async {
//                 int response = await sqlDb.updateData('''
//                UPDATE tasks SET 
//                task = "${task.text}",
//                note = "${note.text}"
//                WHERE id = ${widget.id}
// ''');
                  int response = await sqlDb.update("tasks" ,
                  {
                    "task" : "${task.text}",
                   "note" : "${note.text}",
                  },
                  "id = ${widget.id}"
                  );
                if (response > 0) {
                  Get.offAllNamed('/ToDoHomeView');
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}








// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:todolist/toDoList/features/presentation/manger/edit_task_cubit/edit_task_cubit.dart';
// import 'package:todolist/toDoList/features/presentation/views/widgets/Custom_Buttom.dart';
// import 'package:todolist/toDoList/features/presentation/views/widgets/Custom_Page_Title.dart';
// import 'package:todolist/toDoList/features/presentation/views/widgets/Custom_Text_Felid.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// import '../../data/sql_db.dart';

// class EditTaskView extends StatefulWidget {
//   const EditTaskView({super.key, this.id, this.task, this.note, });
//   // ignore: prefer_typing_uninitialized_variables
//   final String? task;
//   final String? note;
//   final int? id;
//   @override
//   State<EditTaskView> createState() => _EditTaskViewState();
// }

// class _EditTaskViewState extends State<EditTaskView> {
//   // SqlDb sqlDb = Get.put(SqlDb());
//   // TextEditingController task = TextEditingController();
//   // TextEditingController note = TextEditingController();

//   // @override
//   // void initState() {
//   //   task.text = widget.task;
//   //   note.text = widget.note;
//   //   super.initState();
//   // }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Padding(
//         padding: const EdgeInsets.only(left: 15, right: 15, top: 100),
//         child: Column(
//           children: [
//             const CustomPageTitle(
//               title: 'Edite Task',
//             ),
//             const SizedBox(
//               height: 30,
//             ),
//             CustomTextFelid(
//               // controller:widget.task,
//               // hint: 'Title',
//               hint: widget.task!,
//             ),
//             const SizedBox(
//               height: 15,
//             ),
//             CustomTextFelid(
//               // controller: "${widget.note}",
//               // hint: 'Content',
//               hint: widget.note!,
//               maxlines: 3,
//             ),
//             const SizedBox(
//               height: 50,
//             ),
//             CustomButtom(
//               title: 'Edit',
//               onpressed: () async {
                
//                     //    BlocProvider.of<EditTaskCubit>(context)
//                     //       .edittask(task: widget.task!, note: widget.note , id: widget.id);
                    
//                     // Get.offAllNamed('/ToDoHomeView');

//                 //   int response = await sqlDb.update("tasks" ,
//                 //   {
//                 //     "task" : "${task.text}",
//                 //    "note" : "${note.text}",
//                 //   },
//                 //   "id = ${widget.id}"
//                 //   );
//                 // if (response > 0) {
//                 //   Get.offAllNamed('/ToDoHomeView');
//                 // }
//               },
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
