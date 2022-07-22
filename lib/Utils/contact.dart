import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Contact extends StatefulWidget {
  const Contact({Key? key}) : super(key: key);

  @override
  State<Contact> createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  bool isMailhovered = false;
  bool isMailtapped = false;
  bool isContacthovered = false;
  bool isContacttapped = false;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.height;
    return ClipRRect(
      borderRadius: BorderRadius.circular(25),
      child: BackdropFilter(
        filter: ImageFilter.blur(
          sigmaX: 1.5,
          sigmaY: 1.5,
        ),
        child: AnimatedContainer(
          duration: const Duration(microseconds: 1500),
          height: height * 0.35,
          width: width * 0.45,
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.3),
            borderRadius: BorderRadius.circular(25),
            border: Border.all(width: 2, color: Colors.white30),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                "Contact",
                style: GoogleFonts.dosis(
                  textStyle: TextStyle(
                    color: Colors.white,
                    fontSize: height * 0.04,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              MouseRegion(
                onHover: (_) {
                  setState(() {
                    isMailhovered = true;
                  });
                },
                onExit: (_) {
                  setState(() {
                    isMailhovered = false;
                  });
                },
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(25),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(
                      sigmaX: isMailhovered ? 20 : 25,
                      sigmaY: isMailhovered ? 20 : 25,
                    ),
                    child: AnimatedContainer(
                      duration: const Duration(microseconds: 1500),
                      height: height * 0.05,
                      width: width * 0.40,
                      decoration: BoxDecoration(
                        color: Colors.white
                            .withOpacity(isMailhovered ? 0.5 : 0.25),
                        borderRadius: BorderRadius.circular(25),
                        border: Border.all(
                            width: 2,
                            color:
                                isMailhovered ? Colors.white : Colors.white30),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            "RAJPUTSIDDHARTH18@GMAIL.COM",
                            style: GoogleFonts.dosis(
                              textStyle: TextStyle(
                                color: Colors.white,
                                fontSize: height * 0.025,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              MouseRegion(
                onHover: (_) {
                  setState(() {
                    isContacthovered = true;
                  });
                },
                onExit: (_) {
                  setState(() {
                    isContacthovered = false;
                  });
                },
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(25),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(
                      sigmaX: isContacthovered ? 20 : 25,
                      sigmaY: isContacthovered ? 20 : 25,
                    ),
                    child: AnimatedContainer(
                      duration: const Duration(microseconds: 1500),
                      height: height * 0.05,
                      width: width * 0.40,
                      decoration: BoxDecoration(
                        color: Colors.white
                            .withOpacity(isContacthovered ? 0.5 : 0.25),
                        borderRadius: BorderRadius.circular(25),
                        border: Border.all(
                            width: 2,
                            color: isContacthovered
                                ? Colors.white
                                : Colors.white30),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            "+918368313300",
                            style: GoogleFonts.dosis(
                              textStyle: TextStyle(
                                color: Colors.white,
                                fontSize: height * 0.025,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}