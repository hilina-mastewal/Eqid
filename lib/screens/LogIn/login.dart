import 'package:flutter/material.dart';
import 'package:todo_list/screens/LogIn/input.dart';
import 'package:todo_list/screens/LogIn/eqidimage.dart';

class MyLoginPage extends StatelessWidget {
  const MyLoginPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 238, 234, 234),
      body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(color: Color(0xFF052124)),
          child: Column(
            children: [EqidImages(), Login(), Inputs()],
          )),
    );
  }
}

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding:
            EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.03),
        child: SizedBox(
            child: Column(children: [
          Padding(
              padding: EdgeInsets.only(bottom: 20),
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
                height: 35,
                width: 150,
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
                          'LogIn',
                          style: TextStyle(
                            fontSize: 15,
                            fontFamily: 'Futura',
                            color: Colors.white,
                          ),
                        ))
                  ],
                ))
          ]))
        ])));
  }
}
