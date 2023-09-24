import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../constanis.dart';
import '../../manger/task_cubit/task_view_cubit.dart';
import '../edit_task_view.dart';

class ToDoItem extends StatefulWidget {
  ToDoItem({
    super.key,
    required this.task,
    required this.note,
    required this.index,
    required this.id, required this.formatcurentDate,
    // this.kiconColor,
    // this.kiconColor2
  });


  final String task;
  final String note;
 final  String formatcurentDate;

  final int index;
  final int id;
 dynamic?  kiconColor ;
 dynamic? kiconColor2  =kPrimaryColor;

  @override
  State<ToDoItem> createState() => _ToDoItemState();
}
    // KcolorControler kcolorControler = KcolorControler();

class _ToDoItemState extends State<ToDoItem> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => EditTaskView(
              task: widget.task,
              note: widget.note,
              id: widget.id,
            ),
          ),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color:kPrimaryColor,
        ),
        height: 60,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    child: GestureDetector(
                      onTap: () {
                           widget.kiconColor =  Colors.red;
                          widget.kiconColor2 = Colors.black;
                        // BlocProvider.of<TaskViewCubit>(context)
                        //     .doneColorHandelar(widget.index);
                        setState(() {
                          widget;
                        });
                      },
                      child: Container(
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                            color:widget. kiconColor,
                            borderRadius: BorderRadius.circular(4),
                            border: Border.all(color: Colors.grey)),
                        child: Center(
                            child: Icon(
                          Icons.done,
                          size: 18,
                          color:widget. kiconColor2,
                        )),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(widget.task),
                        const SizedBox(
                          height: 5,
                        ),
                        Row(
                          children:  [
                            Text(widget.formatcurentDate,style: TextStyle(
                              fontSize: 12
                            ),),
                            // SizedBox(
                            //   width: 5,
                            // ),
                            // Text('12:56'),
                          const  SizedBox(
                              width: 5,
                            ),
                         const   Icon(
                              Icons.alarm,
                              size: 16,
                            )
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8, left: 8, right: 8),
                child: Container(
                  height: 45,
                  width: 35,
                  child: IconButton(
                    onPressed: () async {
                      BlocProvider.of<TaskViewCubit>(context)
                          .deletData(widget.index);
                      setState(
                        () {},
                      );
                    },
                    icon: const Icon(
                      Icons.delete,
                      size: 32,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
//   void doneColorHandelar() {
//     kiconColor = Colors.red;
//     kiconColor2 = Colors.black;
//   }
// }
