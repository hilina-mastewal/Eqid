import 'package:flutter/material.dart';
import 'package:todo_list/screens/SignUp/signup.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MyFirstPage extends StatelessWidget {
  const MyFirstPage({
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
            children: [Images(), Buttons()],
          )),
    );
  }
}

class Images extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(
            top: MediaQuery.of(context).size.height * 0.1, left: 50, right: 50),
        child: Container(
            width: 400,
            height: 450,
            decoration: BoxDecoration(
                image: const DecorationImage(
                    image: AssetImage('images/eqid3d.jpg'), fit: BoxFit.cover),
                borderRadius: BorderRadius.circular(30)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  'images/eqidLogo.svg',
                  width: 80.0,
                  height: 45.0,
                ),
                Padding(
                    padding: EdgeInsets.only(top: 330),
                    child: Text(
                      'Your daily Partner',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w900,
                        fontFamily: 'Futura',
                        color: Colors.white,
                      ),
                    )),
                Padding(
                    padding: EdgeInsets.only(top: 19),
                    child: Text(
                      'Developed By MrKuz R&D',
                      style: TextStyle(
                        fontSize: 9,
                        fontWeight: FontWeight.w800,
                        fontFamily: 'Futura',
                        color: Colors.white,
                      ),
                    ))
              ],
            )));
  }
}

class Buttons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.1),
        child: Container(
            height: 40,
            width: 200,
            decoration: BoxDecoration(
                color: Color(0XFF12D7A7),
                borderRadius: BorderRadius.circular(15)),
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF12D7A7),
                  shape: RoundedRectangleBorder(
                      //to set border radius to button
                      borderRadius: BorderRadius.circular(20)),
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MySignUpPage()));
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'Lets Get Started',
                      style: TextStyle(
                        fontSize: 15,
                        fontFamily: 'Futura',
                        color: Colors.white,
                      ),
                    ),
                    Icon(
                      Icons.arrow_right_alt,
                      color: Colors.black,
                      size: 30,
                    ),
                  ],
                ))));
  }
}
