import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
        filter: ImageFilter.blur(sigmaX: 1.5, sigmaY: 1.5),
        child: Container(
          height: height * 0.75,
          width: width * 0.6,
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.3),
            borderRadius: BorderRadius.circular(25),
            border: Border.all(width: 2, color: Colors.white30),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                child: Column(
                  children: [
                    const ProfilePhoto(),
                    Text(
                      "Siddharth",
                      style: GoogleFonts.squarePeg(
                        textStyle: TextStyle(
                            color: Colors.white,
                            fontSize: height * 0.115,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    Text(
                      "Full Stack Developer | CEH",
                      style: GoogleFonts.dosis(
                        textStyle: TextStyle(
                            color: Colors.white,
                            fontSize: height * 0.03,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ],
                ),
              ),
              const SocialHandleWidgets(),
            ],
          ),
        ),
      ),
    );
  }
}
