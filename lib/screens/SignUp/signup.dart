import 'package:flutter/material.dart';
import 'package:todo_list/screens/SignUp/profile.dart';
import 'package:todo_list/screens/SignUp/input.dart';
import 'package:todo_list/screens/SignUp/images.dart';

//import 'package:shadow/shadow.dart';

class MySignUpPage extends StatelessWidget {
  const MySignUpPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(color: Color(0xFF052124)),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Profile(),
                Images(),
                SignUp(),
                Inputs(),
              ])),
    );
  }
}

class SignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
      Padding(
        padding: EdgeInsets.only(right: 315),
        child: Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
              color: Color.fromARGB(255, 214, 234, 226),
              borderRadius: BorderRadius.circular(60)),
          child: Icon(
            Icons.add,
            color: Colors.greenAccent,
            size: 35,
          ),
        ),
      ),
      Padding(
          padding: EdgeInsets.only(top: 6, right: 315),
          child: Text(
            'Add Photo',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              fontFamily: 'Futura',
              color: Colors.white,
            ),
          )),
      Padding(
          padding: EdgeInsets.only(bottom: 20, top: 5),
          child: Container(
            height: 1,
            width: 250,
            decoration: BoxDecoration(
              color: Color(0xFF12D7A7),
              borderRadius: BorderRadius.circular(15),
              // boxShadow: Shadow(blurRadius: 3,color: )
            ),
          )),
      SizedBox(
          child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
        Container(
            height: 30,
            width: 170,
            decoration: BoxDecoration(
                color: Color(0xFF12D7A7),
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(15),
                    topRight: Radius.circular(15))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                    padding: EdgeInsets.only(right: 10),
                    child: Text(
                      'Create account:',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Futura',
                        color: Colors.white,
                      ),
                    ))
              ],
            ))
      ]))
    ]));
  }
}
