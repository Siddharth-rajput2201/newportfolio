import 'dart:ui';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:newportfolio/Utils/social_handle_icons.dart';

class ProjectTile extends StatefulWidget {
  final String projectName;
  final String imagepath;
  final double width;
  final String githuburl;
  final String downloadurl;
  final String projectDescription;
  final double imageHeight;
  final double imageWidth;
  final bool showWebIcon;
  final String webUrl;
  const ProjectTile(
      {Key? key,
      required this.projectName,
      required this.width,
      required this.imagepath,
      required this.githuburl,
      required this.downloadurl,
      required this.imageHeight,
      required this.imageWidth,
      required this.projectDescription,
      required this.showWebIcon,
      required this.webUrl})
      : super(key: key);

  @override
  State<ProjectTile> createState() => _ProjectTileState();
}

class _ProjectTileState extends State<ProjectTile> {
  String firstHalf = "";
  String secondHalf = "";
  bool flag = true;
  @override
  void initState() {
    if (widget.projectDescription.length > 80) {
      firstHalf = widget.projectDescription.substring(0, 80);
      secondHalf = widget.projectDescription
          .substring(80, widget.projectDescription.length);
    } else {
      firstHalf = widget.projectDescription;
      secondHalf = "";
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(25),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 1.5, sigmaY: 1.5),
          child: Container(
            width: widget.width,
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.3),
              borderRadius: BorderRadius.circular(25),
              border: Border.all(width: 2, color: Colors.white30),
            ),
            child: Center(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset(
                          widget.imagepath,
                          height: widget.imageHeight,
                          width: widget.imageWidth,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 12.0, right: 12.0),
                      child: Divider(
                        thickness: 2,
                        color: Colors.grey,
                      ),
                    ),
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 12.0, right: 12.0),
                        child: RichText(
                          text: TextSpan(
                              text: widget.projectName,
                              style: GoogleFonts.squarePeg(
                                  textStyle:
                                      const TextStyle(color: Colors.white),
                                  fontSize: 45,
                                  fontWeight: FontWeight.w800)),
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 12.0, right: 12.0),
                      child: Divider(
                        thickness: 2,
                        color: Colors.grey,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: secondHalf.isNotEmpty
                                  ? flag
                                      ? "$firstHalf..."
                                      : (firstHalf) + (secondHalf)
                                  : firstHalf,
                              style: GoogleFonts.dosis(
                                  textStyle:
                                      const TextStyle(color: Colors.white)),
                            ),
                            TextSpan(
                              text: secondHalf.isNotEmpty
                                  ? flag
                                      ? "show more"
                                      : " show less"
                                  : "",
                              style: GoogleFonts.dosis(
                                textStyle: const TextStyle(color: Colors.blue),
                              ),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () => setState(
                                      () {
                                        flag = !flag;
                                      },
                                    ),
                            )
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SocialHandleIcon(
                          iconhovercolor: Colors.black87,
                          svgpath: "assets/images/githubsvg.svg",
                          redirecturl: widget.githuburl,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        SocialHandleIcon(
                          iconhovercolor: Colors.white,
                          svgpath: "assets/images/downloadsvg.svg",
                          redirecturl: widget.downloadurl,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        widget.showWebIcon
                            ? SocialHandleIcon(
                                iconhovercolor: Colors.white,
                                svgpath: "assets/images/websvg.svg",
                                redirecturl: widget.webUrl,
                              )
                            : const SizedBox(),
                        // GestureDetector(
                        //   onTap: () {
                        //     redirect(widget.downloadurl);
                        //   },
                        //   child: Image.asset(
                        //     "assets/images/downloadicon.png",
                        //     height: 57,
                        //     width: 57,
                        //   ),
                        // ),
                      ],
                    ),
                    const SizedBox(
                      height: 7,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
