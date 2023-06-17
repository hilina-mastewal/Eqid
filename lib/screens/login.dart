import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:todo_list/screens/signup.dart';
import 'package:todo_list/screens/home.dart';

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
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [Images(), Login(), Inputs()],
          )),
    );
  }
}

class Images extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(top: 80, bottom: 40),
        child: Container(
            width: 320,
            height: 390,
            decoration: BoxDecoration(
                //boxShadow:Shadow(blurRadius: 0.3),
                image: const DecorationImage(
                    image: AssetImage('images/Login.jpg'), fit: BoxFit.cover),
                borderRadius: BorderRadius.circular(30),
                border: Border.all(color: Color.fromARGB(255, 16, 119, 93))),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  'images/eqidLogo.svg',
                  width: 80.0,
                  height: 45.0,
                ),
                Padding(
                    padding: EdgeInsets.only(top: 300),
                    child: Text(
                      'Let us Keep your mind fit!',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w300,
                        fontFamily: 'Futura',
                        color: Colors.white,
                      ),
                    ))
              ],
            )));
  }
}

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
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
      Padding(
          padding: EdgeInsets.only(right: 270),
          child: Container(
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
              )))
    ]));
  }
}

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
      Padding(
          padding: EdgeInsets.only(),
          child: SizedBox(
              child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor:
                        Color(0xFF052124), //background color of button
                    //border width and color
                    //elevation of button
                    //content padding inside button
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => MySignUpPage()));
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
                  ])))),
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
              child:
                  Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
                Padding(
                    padding: EdgeInsets.only(),
                    child: Text(
                      'LogIn',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w300,
                        fontFamily: 'Futura',
                        color: Colors.white,
                      ),
                    )),
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
