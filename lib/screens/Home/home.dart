import 'package:flutter/material.dart';
import 'package:todo_list/screens/Home/tasklist.dart';
import 'package:todo_list/screens/Home/task.dart';
import 'package:todo_list/screens/Home/addtask.dart';
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

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.all(10),
          child: Container(
            height: 70,
            width: 70,
            decoration: BoxDecoration(
                image: const DecorationImage(
                  image: AssetImage("images/images.jpg"),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(30)),
          ),
        ),
        ProfileName()
      ],
    );
  }
}

class ProfileName extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
            padding: EdgeInsets.only(top: 15),
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text(
                'Hi Kidus!',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                  fontFamily: 'Futura',
                  color: Colors.black,
                ),
              ),
              Icon(
                Icons.verified_outlined,
                color: Color(0XFF343E87),
                size: 35,
              ),
            ])),
        Padding(
            padding: EdgeInsets.only(),
            child: SizedBox(
                width: 190,
                child: Text(
                  'Welcome back Here is a list of thing we have for today !',
                  style: TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Futura',
                      color: Colors.black38),
                  maxLines: 3,
                ))),
      ],
    );
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

class Tasks extends StatelessWidget {
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
                child: Text(
                  'Add Category',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Futura',
                    color: Colors.black,
                  ),
                ),
                onPressed: () {},
              ))
        ])
      ],
    );
  }
}

class Addcategory extends StatefulWidget {
  @override
  State<Addcategory> createState() => _AddcategoryState();
}

class _AddcategoryState extends State<Addcategory> {
  @override
  Widget build(BuildContext context) {
    return (Container());
  }
}

class Category extends StatefulWidget {
  @override
  State<Category> createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  final tasklist = TodoTasks.tasklist();
  //final _todocontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Padding(
          padding: EdgeInsets.only(top: 16, bottom: 10, left: 25),
          child: Text(
            'School Project(3)',
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

class Footers extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 40,
        decoration: BoxDecoration(color: Color.fromARGB(255, 223, 223, 223)),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 15, top: 3),
                child: Icon(
                  Icons.file_copy_outlined,
                  color: Colors.black,
                  size: 25,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 15, top: 3),
                child: Icon(
                  Icons.people,
                  color: Colors.black,
                  size: 25,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 15, top: 3),
                child: Icon(
                  Icons.person_3_rounded,
                  color: Colors.black,
                  size: 25,
                ),
              ),
            ]));
  }
}
