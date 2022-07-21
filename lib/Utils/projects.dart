import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Projects extends StatefulWidget {
  const Projects({Key? key}) : super(key: key);

  @override
  State<Projects> createState() => _ProjectsState();
}

class _ProjectsState extends State<Projects> {
  bool ishovered = false;
  bool istapped = false;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.height;
    return MouseRegion(
      onHover: (_) {
        setState(() {
          ishovered = true;
        });
      },
      onExit: (_) {
        setState(() {
          ishovered = false;
        });
      },
      child: ClipRRect(
        borderRadius: BorderRadius.circular(25),
        child: BackdropFilter(
          filter: ImageFilter.blur(
            sigmaX: ishovered ? 15 : 1.5,
            sigmaY: ishovered ? 15 : 1.5,
          ),
          child: AnimatedContainer(
            duration: const Duration(microseconds: 1500),
            height: height * 0.15,
            width: width * 0.45,
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(ishovered ? 0.5 : 0.25),
              borderRadius: BorderRadius.circular(25),
              border: Border.all(
                  width: 2, color: ishovered ? Colors.white : Colors.white30),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "Projects",
                  style: GoogleFonts.dosis(
                    textStyle: TextStyle(
                      color: Colors.white,
                      fontSize: height * 0.04,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
