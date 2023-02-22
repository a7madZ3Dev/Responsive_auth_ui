import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constants.dart';
import '../../../utils/responsive.dart';
import '../../../utils/extensions.dart';

class WelcomeImage extends StatelessWidget {
  const WelcomeImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        const Text(
          "WELCOME DEAR",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: defaultPadding),
        Row(
          children: [
            const SizedBox(width: 10),
            Responsive.isMobile(context)
                ? Expanded(
                    child: SvgPicture.asset(
                      "assets/icons/auth.svg",
                      fit: BoxFit.contain,
                      height: context.height * 0.5,
                    ),
                  )
                : Expanded(
                    flex: 8,
                    child: SvgPicture.asset(
                      "assets/icons/auth.svg",
                      fit: BoxFit.contain,
                    ),
                  ),
            const SizedBox(width: 10)
          ],
        ),
        const SizedBox(height: defaultPadding),
      ],
    );
  }
}
