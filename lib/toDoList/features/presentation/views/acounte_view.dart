import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:todolist/toDoList/core/colors.dart';
import 'package:todolist/toDoList/features/presentation/manger/task_cubit/task_view_cubit.dart';
import 'package:todolist/toDoList/features/presentation/views/widgets/Custom_Bottom_Bar.dart';
import 'package:todolist/toDoList/features/presentation/views/widgets/task_detalis_section.dart';

import '../../../constanis.dart';
import '../../../core/local/local_controler.dart';
import '../../../core/widgets/custom_them_item.dart';
import '../../../core/widgets/lang_section.dart';
import '../../data/sql_db.dart';

class AcounteView extends StatefulWidget {
  AcounteView({super.key});

  @override
  State<AcounteView> createState() => _AcounteViewState();
}

class _AcounteViewState extends State<AcounteView> {
  @override
  void initState() {
    BlocProvider.of<TaskViewCubit>(context);
    setState(() {});
    super.initState();
  }
  // savePrefs(String value) async {
  //   SharedPreferences? prefe = await SharedPreferences.getInstance();
  //   prefe.setString('color', value);
  //   print('sucsess');
  // }
  // String? prefVlue ;
  // getPrefs() async {
  //   SharedPreferences? prefe = await SharedPreferences.getInstance();
  //   setState(() {
  //         prefVlue = prefe.getString('color');

  //   });
  // }

  // KcolorControler kcolorControler = KcolorControler();

  LocalControler controler = Get.put(LocalControler());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'mine'.tr,
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        elevation: .2,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15, top: 100),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TasksDetalisSection(),
            const SizedBox(
              height: 20,
            ),
            Text(
              'pure color'.tr,
              style: const TextStyle(fontSize: 18),
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              children: [
                customThemItem(
                  onTap: () {
                    kPrimaryColor = const Color.fromARGB(255, 69, 201, 73);
                    // savePrefs('1');

                    setState(() {});
                  },
                  color: const Color.fromARGB(255, 69, 201, 73),
                ),
                customThemItem(
                  onTap: () {
                    kPrimaryColor =  scandPrimaryColor;
                    setState(() {});
                  },
                  color:  scandPrimaryColor,
                ),
                customThemItem(
                  onTap: () {
                    kPrimaryColor = const Color.fromARGB(57, 215, 202, 202);
                    setState(() {});
                  },
                  color: const Color.fromARGB(59, 167, 155, 155),
                ),
                customThemItem(
                  onTap: () {
                    kPrimaryColor = const Color.fromARGB(255, 140, 176, 205);
                    setState(() {});
                  },
                  color: const Color.fromARGB(255, 140, 176, 205),
                ),
                customThemItem(
                  onTap: () {
                    kPrimaryColor = const Color.fromARGB(255, 192, 198, 78);
                    setState(() {});
                  },
                  color: const Color.fromARGB(255, 192, 198, 78),
                ),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            Text(
              'language'.tr,
              style: const TextStyle(fontSize: 18),
            ),
            const SizedBox(
              height: 10,
            ),
            LanguageSection(controler: controler),
            const Expanded(
              child: SizedBox(),
            ),
            CustomBottomBar(
              onTapToHome: () {
                Get.offAllNamed('/ToDoHomeView');
              },
            ),
          ],
        ),
      ),
    );
  }
}

// saveColorPrefs(dynamic key, dynamic value) async {
//   SharedPreferences prefs = await SharedPreferences.getInstance();
//   prefs.setString(key, value);
// }
