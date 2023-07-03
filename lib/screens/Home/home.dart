import 'package:flutter/material.dart';
import 'package:todo_list/screens/Home/tasklist.dart';
import 'package:todo_list/screens/Home/task.dart';
import 'package:todo_list/screens/Home/addtask.dart';
import 'package:todo_list/screens/Home/profiles.dart';
import 'package:todo_list/screens/Home/Footer.dart';
import 'package:todo_list/screens/Home/upcomingtasks.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: NestedScrollView(
            headerSliverBuilder: (context, innerBoxScroller) => [
                  SliverAppBar(
                      automaticallyImplyLeading: false,
                      toolbarHeight: 175,
                      backgroundColor: Color(0XFF12D7A7).withOpacity(0.25),
                      elevation: 0,
                      title: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [Date(), Profile()]))
                ],
            body: SingleChildScrollView(
                child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          UpcomingTask(),
                          Tasks(),
                          Category(),
                        ])))),
        bottomNavigationBar: Footers());
  }
}

// ignore: must_be_immutable
class Date extends StatelessWidget {
  DateTime date = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Icon(
          Icons.calendar_today,
          color: Color.fromARGB(255, 41, 41, 41),
          size: 25,
        ),
        Text(
          '${date.day}/${date.month}/${date.year}',
          style: TextStyle(
            fontSize: 15,
            fontFamily: 'Futura',
            color: Colors.black45,
          ),
        )
      ],
    );
  }
}

class Tasks extends StatefulWidget {
  @override
  State<Tasks> createState() => _TasksState();
}

class _TasksState extends State<Tasks> {
  List<String> nameList = [];
  String name = '';

  void showNameDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: Color.fromARGB(255, 14, 23, 41),
          title: Text(
            'Category Name',
            style: TextStyle(color: Colors.greenAccent),
          ),
          content: TextField(
              onChanged: (value) {
                setState(() {
                  name = value;
                });
              },
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.greenAccent),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  filled: true,
                  fillColor: Color.fromARGB(255, 14, 23, 41),
                  hintText: 'Enter  Category',
                  hintStyle: TextStyle(color: Colors.greenAccent))),
          actions: [
            TextButton(
              child: Text(
                'OK',
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () {
                Category();
                setState(() {
                  nameList.add(name);
                });
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
            padding: EdgeInsets.only(top: 10, left: 16),
            child: Text('Tasks',
                style: TextStyle(
                    fontSize: 15,
                    fontFamily: 'Futura',
                    fontWeight: FontWeight.w900,
                    color: Colors.black))),
        Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
          Padding(
              padding: EdgeInsets.only(top: 10, left: 16),
              child: Icon(
                Icons.add,
                color: Colors.greenAccent,
                size: 20,
              )),
          Padding(
              padding: EdgeInsets.only(top: 10, right: 10),
              child: TextButton(
                onPressed: showNameDialog,
                child: Text(
                  'Add Category',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Futura',
                    color: Colors.black,
                  ),
                ),
              ))
        ])
      ],
    );
  }
}

class Category extends StatefulWidget {
  @override
  State<Category> createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  final tasklist = TodoTasks.tasklist();
  String name = _TasksState().name;
  //final _todocontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Padding(
          padding: EdgeInsets.only(top: 16, bottom: 10, left: 25),
          child: Text(
            name,
            style: TextStyle(
              fontSize: 15,
              fontFamily: 'Futura',
              fontWeight: FontWeight.w900,
              color: Colors.black,
            ),
          )),
      Padding(
          padding: EdgeInsets.all(4),
          child: Container(
              width: 400,
              height: 170,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color.fromARGB(255, 150, 152, 244).withOpacity(0.5),
              ),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                        width: 400,
                        height: 100,
                        child: SingleChildScrollView(
                          child: Column(children: <Widget>[
                            for (TodoTasks taskss in tasklist)
                              Taskitem(
                                tasks: taskss,
                                handleChange: handleChange,
                                deleteItem: deleteItem,
                              ),
                          ]),
                        )),
                    Padding(padding: EdgeInsets.all(10), child: Addtask())
                  ])))
    ]);
  }

  void handleChange(TodoTasks tasks) {
    if (tasks.isDone == true) {
      setState(() {
        tasks.isDone = false;
      });
    } else if (tasks.isDone == false) {
      setState(() {
        tasks.isDone = true;
      });
    }
  }

  void deleteItem(String id) {
    setState(() {
      tasklist.removeWhere((item) => item.id == id);
    });
  }
}
