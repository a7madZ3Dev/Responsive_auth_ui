import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../Login/login_screen.dart';
import '../../Sign_up/sign_up_screen.dart';

class LoginAndSignUpBtn extends StatelessWidget {
  const LoginAndSignUpBtn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Hero(
          tag: "login_btn",
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const LoginScreen();
                  },
                ),
              );
            },
            child: Text(
              "Login".toUpperCase(),
            ),
          ),
        ),
        const SizedBox(height: 16),
        Hero(
          tag: "signUp_btn",
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const SignUpScreen();
                  },
                ),
              );
            },
            style: ElevatedButton.styleFrom(
                backgroundColor: kPrimaryLightColor, elevation: 0),
            child: Text(
              "Sign Up".toUpperCase(),
              style: const TextStyle(color: Colors.black),
            ),
          ),
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}
