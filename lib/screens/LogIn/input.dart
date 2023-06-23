import 'package:flutter/material.dart';
import 'package:todo_list/screens/SignUp/signup.dart';
import 'package:todo_list/screens/Home/home.dart';

class Inputs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
      Padding(
        padding: EdgeInsets.only(top: 30),
        child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(3), color: Colors.white),
            width: 300.0,
            height: 30,
            child: TextField(
              style: TextStyle(fontSize: 15.0, color: Colors.white),
              decoration: InputDecoration(
                labelText: 'User Name',
              ),
            )),
      ),
      Padding(
          padding: EdgeInsets.only(top: 20),
          child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(3), color: Colors.white),
              width: 300.0,
              height: 30,
              child: TextField(
                style:
                    TextStyle(fontSize: 15.0, height: 0.5, color: Colors.white),
                decoration: InputDecoration(
                  labelText: 'Password',
                ),
              ))),
      SizedBox(
          child: TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Color(0xFF052124), //background color of button
                //border width and color
                //elevation of button
                //content padding inside button
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MySignUpPage()));
              },
              child: Row(children: [
                Icon(
                  Icons.circle,
                  color: Colors.white,
                  size: 9,
                ),
                Padding(
                    padding: EdgeInsets.only(
                      left: 6,
                    ),
                    child: Text(
                      'Dont have an account? SignUp',
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Futura',
                        color: Color(0xFF12D7A7),
                      ),
                    )),
              ]))),
      Container(
          height: 32,
          width: 100,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
          ),
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF12D7A7),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => MyHomePage(), maintainState: false),
                );
              },
              child: Row(children: [
                Text(
                  'LogIn',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w300,
                    fontFamily: 'Futura',
                    color: Colors.white,
                  ),
                ),
                Icon(
                  Icons.arrow_right_alt,
                  color: Colors.black,
                  size: 27,
                ),
              ]))),
      Padding(
          padding: EdgeInsets.only(top: 25),
          child: Text(
            'Developed by MrKuz R&d',
            style: TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.w300,
              fontFamily: 'Futura',
              color: Colors.white,
            ),
          ))
    ]));
  }
}
