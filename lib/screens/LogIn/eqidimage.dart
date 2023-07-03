import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class EqidImages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.1),
        child: Container(
            alignment: Alignment.center,
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
