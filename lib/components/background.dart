import 'package:flutter/material.dart';
import 'package:responsive_login_sign_up/utils/responsive.dart';

import '../utils/extensions.dart';

class Background extends StatelessWidget {
  final Widget child;
  const Background({
    Key? key,
    required this.child,
    this.topImage = "assets/images/main_top.png",
    this.bottomImage = "assets/images/login_bottom.png",
  }) : super(key: key);

  final String topImage, bottomImage;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SizedBox(
        width: double.infinity,
        height: context.height,
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Positioned(
              top: 0,
              left: 0,
              child: Image.asset(
                topImage,
                width: 120,
              ),
            ),
          if (! Responsive.isMobile(context)) 
           Positioned(
              bottom: 0,
              right: 0,
              child: Image.asset(bottomImage, width: 140),
            ),
            SafeArea(child: child),
          ],
        ),
      ),
    );
  }
}
