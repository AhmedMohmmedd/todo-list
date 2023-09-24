
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

import '../../manger/task_cubit/task_view_cubit.dart';
import '../acounte_view.dart';
import 'custom_tasks_deta_lisItem.dart';

class TasksDetalisSection extends StatelessWidget {
  const TasksDetalisSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // CustomTasksDetalisItem(
        //   text: 'completed tasks'.tr,
        //   number: BlocProvider.of<TaskViewCubit>(context).tasks.length,
        // ),
        // const SizedBox(
        //   width: 15,
        // ),
        CustomTasksDetalisItem(
          text: 'pending tasks'.tr,
          number: BlocProvider.of<TaskViewCubit>(context).tasks.length,
        ),
      ],
    );
  }
}