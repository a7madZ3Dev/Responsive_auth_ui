import 'package:flutter/material.dart';

import '../../../screens/Sign_up/components/or_divider.dart';
import '../../../screens/Sign_up/components/social_icon.dart';

class SocialSignUp extends StatelessWidget {
  const SocialSignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const OrDivider(),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SocialIcon(
              iconSrc: "assets/icons/facebook.svg",
              press: () {},
            ),
            SocialIcon(
              iconSrc: "assets/icons/twitter.svg",
              press: () {},
            ),
            SocialIcon(
              iconSrc: "assets/icons/google-plus.svg",
              press: () {},
            ),
          ],
        ),
        const SizedBox(height: 4),
      ],
    );
  }
}
