import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:todolist/toDoList/features/data/sql_db.dart';
import 'package:todolist/toDoList/features/presentation/views/widgets/Custom_Buttom.dart';
import 'package:todolist/toDoList/features/presentation/views/widgets/Custom_Page_Title.dart';
import 'package:todolist/toDoList/features/presentation/views/widgets/Custom_Text_Felid.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../manger/add_task_cubit/add_task_cubit.dart';

class AddTaskView extends StatelessWidget {
  AddTaskView({super.key});
  SqlDb sqlDb = SqlDb();

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: AddTakViewBody());
  }
}

class AddTakViewBody extends StatefulWidget {
  AddTakViewBody({
    super.key,
  });

  @override
  State<AddTakViewBody> createState() => _AddTakViewBodyState();
}

class _AddTakViewBodyState extends State<AddTakViewBody> {
  // String? title;
  TextEditingController title = TextEditingController();

  TextEditingController note = TextEditingController();
  String? formatcurentDate;
  var curentDate;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15, top: 100),
      child: SingleChildScrollView(
        child: Column(
          children: [
            CustomPageTitle(
              title: 'add new task'.tr,
            ),
            const SizedBox(
              height: 30,
            ),
            CustomTextFelid(
              controller: title,
              hint: 'title'.tr,
            ),
            const SizedBox(
              height: 15,
            ),
            CustomTextFelid(
              // onSaved: (value) {
              //   note = value;
              // },
              controller: note,
              hint: 'add note to task'.tr,
              maxlines: 3,
            ),
            const SizedBox(
              height: 50,
            ),
            CustomButtom(
              title: 'add'.tr,
              onpressed: () async {
                
            formatcurentDate=    DateFormat('d/M  H:mm').format(DateTime.now()).toString();
                BlocProvider.of<AddtaskCubit>(context).addtask(
                    title: title,
                    note: note,
                    formatcurentDate: formatcurentDate);

                Get.offAllNamed('/ToDoHomeView');

                // int response = await sqlDb.insert("tasks",
                // {
                //   "task" :"${title.text}",
                //   "note" : "${note.text}",
                // }
                // );
                // print('response==================');
                // print(response);
                // if (response > 0) {
                //   Get.offAllNamed('/ToDoHomeView');
                // }
              },
            ),
          ],
        ),
      ),
    );
  }
}
