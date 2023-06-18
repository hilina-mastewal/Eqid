import 'package:flutter/material.dart';
//import 'package:todo_list/screens/home.dart';
import 'package:todo_list/screens/task.dart';

class Taskitem extends StatelessWidget {
  final TodoTasks tasks;
  final handle_change;
  final delete_item;

  const Taskitem(
      {Key? key,
      required this.tasks,
      required this.handle_change,
      required this.delete_item})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          handle_change(tasks);
        },
        child: SizedBox(
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 40, top: 10),
                    child: Icon(
                      tasks.isDone!
                          ? Icons.check_box_rounded
                          : Icons.check_box_outline_blank,
                      color: Color.fromARGB(255, 66, 109, 235),
                      size: 20,
                    ),
                  ),
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                            padding: EdgeInsets.only(left: 5, top: 13),
                            child: Text(
                              tasks.name!,
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: 'Futura',
                                  color: Colors.black,
                                  decoration: tasks.isDone!
                                      ? TextDecoration.lineThrough
                                      : null),
                            )),
                        Row(children: [
                          Padding(
                              padding: EdgeInsets.only(left: 5, top: 5),
                              child: Text(
                                tasks.time!,
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: 'Futura',
                                  color: Colors.black45,
                                ),
                              )),
                          Padding(
                              padding: EdgeInsets.only(left: 2, top: 5),
                              child: Text(
                                tasks.description!,
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: 'Futura',
                                  color: Colors.black45,
                                ),
                              )),
                        ])
                      ]),
                ],
              ),
              Padding(
                  padding: EdgeInsets.only(
                    right: 10,
                  ),
                  child: IconButton(
                      onPressed: () {
                        delete_item(tasks.id);
                      },
                      icon: Icon(
                        Icons.close,
                        color: Color.fromARGB(255, 41, 41, 41),
                        size: 20,
                      ))),
            ])));
  }
}
