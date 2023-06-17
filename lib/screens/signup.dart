import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:todo_list/screens/login.dart';
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

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
            padding: EdgeInsets.only(top: 90, right: 30),
            child: Text(
              'Choose an avatar:',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                fontFamily: 'Futura',
                color: Colors.white,
              ),
            )),
        Padding(
          padding: EdgeInsets.only(),
          child: SvgPicture.asset(
            'images/eqidLogo.svg',
            width: 80.0,
            height: 75.0,
          ),
        ),
        Padding(
            padding: EdgeInsets.only(left: 80, top: 35),
            child: SvgPicture.asset(
              'images/Rectangle.svg',
              width: 60.0,
              height: 100.0,
            )),
      ],
    );
  }
}

class Images extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 380,
        height: 300,
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisSpacing: 0.0,
            mainAxisSpacing: 1.0,
            crossAxisCount: 5,
          ),
          itemCount: _items.length,
          itemBuilder: (context, index) {
            return GestureDetector(
                child: Padding(
              padding: EdgeInsets.all(3),
              child: Container(
                decoration: BoxDecoration(
                    color: Color(0XFF12D7A7),
                    image: DecorationImage(
                        image: AssetImage('images/images.jpg'),
                        fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(60)),
              ),
            ));
          },
        ));
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
      Padding(
          padding: EdgeInsets.only(right: 250),
          child: Container(
              height: 30,
              width: 200,
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

class PhotoItem {
  final String myimage;
  PhotoItem(this.myimage);
}

final List<PhotoItem> _items = [
  PhotoItem('images/avatar/1.jpg'),
  PhotoItem('images/avatar/2.jpg'),
  PhotoItem('images/avatar/3.jpg'),
  PhotoItem('images/avatar/4.jpg'),
  PhotoItem('images/avatar/5.jpg'),
  PhotoItem('images/avatar/6.jpg'),
  PhotoItem('images/avatar/7.jpg'),
  PhotoItem('images/avatar/8.jpg'),
  PhotoItem('images/avatar/9.jpg'),
  PhotoItem('images/avatar/10.jpg'),
  PhotoItem('images/avatar/11.jpg'),
  PhotoItem('images/avatar/12.jpg'),
  PhotoItem('images/avatar/13.jpg'),
  PhotoItem('images/avatar/14.jpg'),
  PhotoItem('images/avatar/15.jpg'),
];
