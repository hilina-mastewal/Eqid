import 'package:flutter/material.dart';
import 'package:todo_list/screens/LogIn/login.dart';

class Inputs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
      Padding(
        padding: EdgeInsets.only(top: 15),
        child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(3), color: Colors.white),
            width: 300.0,
            height: 27,
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
              height: 27,
              child: TextField(
                style: TextStyle(fontSize: 15.0, color: Colors.white),
                decoration: InputDecoration(
                  labelText: 'Email',
                ),
              ))),
      Padding(
          padding: EdgeInsets.only(top: 20),
          child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(3), color: Colors.white),
              width: 300.0,
              height: 27,
              child: TextField(
                style: TextStyle(fontSize: 15.0, color: Colors.white),
                decoration: InputDecoration(
                  labelText: 'Password',
                ),
              ))),
      Padding(
          padding: EdgeInsets.only(
            left: 50,
          ),
          child: SizedBox(
              child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor:
                        Color(0xFF052124), //background color of button
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => MyLoginPage()));
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
                          'Already have an account? LogIn',
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'Futura',
                            color: Color(0xFF12D7A7),
                          ),
                        )),
                  ])))),
      Container(
          height: 32,
          width: 110,
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
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MyLoginPage()));
              },
              child:
                  Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
                Text(
                  'Sign Up',
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
                  size: 20,
                ),
              ]))),
      Padding(
          padding: EdgeInsets.only(top: 29),
          child: Text(
            'Developed by MrKuz R&d',
            style: TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.w500,
              fontFamily: 'Futura',
              color: Colors.white,
            ),
          ))
    ]));
  }
}
