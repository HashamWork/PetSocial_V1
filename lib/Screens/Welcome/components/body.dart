import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'background.dart';
import 'package:pet_app_01/Components/rounded_button.dart';
import 'package:pet_app_01/constants.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    //This provides height of the screen
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Welcome To The Pet App",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: size.height * 0.05,
            ),
            Image.asset(
              "assets/images/undraw_welcome_cats_thqn.png",
              height: size.height * 0.45,
            ),
            RoundedButton(
              text: "Login",
              press: () {
                print('Login is working');
              },
            ),
            RoundedButton(
              text: "Signup",
              press: () {
                print('Signup is working');
              },
            ),
          ],
        ),
      ),
    );
  }
}
