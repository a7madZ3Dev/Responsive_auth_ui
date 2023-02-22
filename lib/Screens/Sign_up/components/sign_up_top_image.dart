import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constants.dart';
import '../../../utils/extensions.dart';
import '../../../utils/responsive.dart';

class SignUpScreenTopImage extends StatelessWidget {
  const SignUpScreenTopImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Sign Up".toUpperCase(),
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: defaultPadding),
        Row(
          children: [
            const SizedBox(width: 10),
            Responsive.isMobile(context)
                ? Expanded(
                    child: SvgPicture.asset(
                      "assets/icons/signUp.svg",
                      fit: BoxFit.contain,
                      height: context.height * 0.5,
                    ),
                  )
                : Expanded(
                    flex: 8,
                    child: SvgPicture.asset(
                      "assets/icons/signUp.svg",
                      fit: BoxFit.contain,
                    ),
                  ),
            const SizedBox(width: 10),
          ],
        ),
        const SizedBox(height: defaultPadding * 2),
      ],
    );
  }
}
