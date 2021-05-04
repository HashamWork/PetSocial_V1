import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:pet_app_01/Authentication/authentication_service.dart';

import 'package:pet_app_01/Screens/Home/components/background.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Background(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'This is the home page',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          ElevatedButton(
            onPressed: () {
              context.read<AuthenticationService>().signOut();
            },
            child: Text('Sing out'),
          )
        ],
      ),
    );
  }
}
