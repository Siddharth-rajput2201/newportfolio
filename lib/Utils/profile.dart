import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:newportfolio/Utils/profile_photo.dart';
import 'package:newportfolio/Utils/social_handle_widgets.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.height;
    return ClipRRect(
      borderRadius: BorderRadius.circular(25),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 1, sigmaY: 1),
        child: Container(
          height: height * 0.75,
          width: width * 0.6,
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.3),
            borderRadius: BorderRadius.circular(25),
            border: Border.all(width: 2, color: Colors.white30),
          ),
          child: Column(
            children: const [
              ProfilePhoto(),
              SocialHandleWidgets(),
            ],
          ),
        ),
      ),
    );
  }
}
