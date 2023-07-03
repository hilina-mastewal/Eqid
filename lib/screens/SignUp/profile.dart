import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
