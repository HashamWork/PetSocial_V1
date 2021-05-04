import 'package:flutter/material.dart';
import 'package:pet_app_01/Components/already_have_an_account_check.dart';
import 'package:pet_app_01/Components/rounded_button.dart';
import 'package:pet_app_01/Components/rounded_password_field.dart';
import 'package:pet_app_01/Screens/Login/login_screen.dart';
import 'package:pet_app_01/Screens/Signup/components/background.dart';
import 'package:pet_app_01/Screens/Signup/components/or_divider.dart';
import 'package:pet_app_01/Screens/Signup/components/social_icon.dart';

import 'package:pet_app_01/Components/rounded_input_field.dart';
import 'package:flutter_svg/svg.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Signup",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: size.height * 0.04,
            ),
            Image.asset(
              "assets/images/undraw_my_app_re_gxtj.png",
              height: size.height * 0.35,
            ),
            RoundedInputField(
              hintText: "Your Email",
              onChanged: (value) {},
            ),
            RoundedPasswordField(onChanged: (value) {}),
            RoundedButton(
              text: "SIGNUP",
              press: () {},
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            AlreadyHaveAnAccountCheck(
              login: false,
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return LoginScreen();
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
