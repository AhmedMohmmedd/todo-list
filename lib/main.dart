import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:todolist/toDoList/core/local/local.dart';
import 'package:todolist/toDoList/core/local/local_controler.dart';
import 'package:todolist/toDoList/features/presentation/manger/add_task_cubit/add_task_cubit.dart';
import 'package:todolist/toDoList/features/presentation/manger/edit_task_cubit/edit_task_cubit.dart';
import 'package:todolist/toDoList/features/presentation/manger/task_cubit/task_view_cubit.dart';
import 'package:todolist/toDoList/features/presentation/views/acounte_view.dart';
import 'package:todolist/toDoList/features/presentation/views/add_task_view.dart';
import 'package:todolist/toDoList/features/presentation/views/edit_task_view.dart';
import 'package:todolist/toDoList/features/presentation/views/to_do_home_view.dart';

SharedPreferences? sherpref;

void main() async {
   WidgetsFlutterBinding.ensureInitialized();
  sherpref = await SharedPreferences.getInstance();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
   LocalControler controler = LocalControler();

    return  MultiBlocProvider(
       providers: [
        BlocProvider(
          create: (context) => TaskViewCubit(
          ),
        ),
        BlocProvider(
          create: (context) => AddtaskCubit(
          )..addtask(),
        ),
        BlocProvider(
          create: (context) => EditTaskCubit(
          )..edittask(),
        ),
      ],
            
  child:  GetMaterialApp(
    
      locale: controler.initilang,
    translations: LocalTranslet(),
      debugShowCheckedModeBanner: false,
      initialRoute: '/ToDoHomeView',
      getPages: [
        
        GetPage(name: '/ToDoHomeView', page:() => ToDoHomeView()),
        GetPage(name: '/AddTaskView', page:() => AddTaskView()),
        GetPage(name: '/EditTaskView', page:() => EditTaskView()),
        GetPage(name: '/AcounteView', page:() => AcounteView()),
      ],
    ),
    );
  }
}
