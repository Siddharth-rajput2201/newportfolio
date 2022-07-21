import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SocialHandleWidgets extends StatefulWidget {
  const SocialHandleWidgets({Key? key}) : super(key: key);

  @override
  State<SocialHandleWidgets> createState() => _SocialHandleWidgetsState();
}

class _SocialHandleWidgetsState extends State<SocialHandleWidgets> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.height;
    return Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(25),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
            child: Container(
              height: height * 0.1,
              width: width * 0.1,
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.3),
                borderRadius: BorderRadius.circular(25),
                border: Border.all(width: 2, color: Colors.white30),
              ),
              child: SvgPicture.asset(
                "assets/images/githubsvg.svg",
                color: Colors.white,
                height: height * 0.075,
                width: width * 0.075,
              ),
            ),
          ),
        )
      ],
    );
  }
}
