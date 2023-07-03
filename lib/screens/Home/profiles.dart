import 'package:flutter/material.dart';

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
