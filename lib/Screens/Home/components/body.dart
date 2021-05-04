import 'package:flutter/material.dart';

import 'package:pet_app_01/Screens/Home/components/background.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Background(
      child: Center(
        child: Text(
          'This is the home page',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
