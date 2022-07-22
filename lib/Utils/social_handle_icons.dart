import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SocialHandleIcon extends StatefulWidget {
  final String svgpath;
  final Color iconhovercolor;
  const SocialHandleIcon({Key? key, required this.svgpath,required this.iconhovercolor}) : super(key: key);

  @override
  State<SocialHandleIcon> createState() => _SocialHandleIconState();
}

class _SocialHandleIconState extends State<SocialHandleIcon> {
  bool ishovered = false;
  bool istapped = false;
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.height;
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
      cursor: SystemMouseCursors.click,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(25),
        child: BackdropFilter(
          filter: ImageFilter.blur(
            sigmaX: ishovered ? 20 : 25,
            sigmaY: ishovered ? 20 : 25,
          ),
          child: AnimatedContainer(
            duration: const Duration(microseconds: 1500),
            height: height * 0.1,
            width: width * 0.1,
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(ishovered ? 0.5 : 0.25),
              borderRadius: BorderRadius.circular(25),
              border: Border.all(
                  width: 2, color: ishovered ? Colors.white : Colors.white30),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SvgPicture.asset(
                widget.svgpath,
                color: ishovered?widget.iconhovercolor : Colors.white,
                height: height * 0.075,
                width: width * 0.075,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
