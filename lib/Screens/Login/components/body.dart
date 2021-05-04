import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:pet_app_01/Authentication/authentication_service.dart';
import 'package:pet_app_01/Screens/Login/components/background.dart';
// import 'package:flutter_auth/Screens/Signup/signup_screen.dart';
// import 'package:pet_app_01/components/already_have_an_account_check.dart';
import 'package:pet_app_01/components/rounded_button.dart';
import 'package:pet_app_01/components/rounded_input_field.dart';
import 'package:pet_app_01/components/rounded_password_field.dart';

class Body extends StatelessWidget {
  Body({
    Key key,
  }) : super(key: key);

  String email, password;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "LOGIN",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.03),
            Image.asset(
              "assets/icons/undraw_Login_re_4vu2.png",
              height: size.height * 0.35,
            ),
            SizedBox(height: size.height * 0.03),
            RoundedInputField(
              hintText: "Your Email",
              onChanged: (value) {
                email = value;
              },
            ),
            RoundedPasswordField(
              onChanged: (value) {
                password = value;
              },
            ),
            RoundedButton(
              text: "LOGIN",
              press: () {
                context.read<AuthenticationService>().signIn(email, password);
              },
            ),
            SizedBox(height: size.height * 0.03),
            // AlreadyHaveAnAccountCheck(
            //   press: () {
            //     Navigator.push(
            //       context,
            //       MaterialPageRoute(
            //         builder: (context) {
            //           return SignUpScreen();
            //         },
            //       ),
            //     );
            //   },
            // ),
          ],
        ),
      ),
    );
  }
}
