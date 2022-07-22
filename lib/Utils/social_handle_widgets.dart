import 'package:flutter/material.dart';
import 'package:newportfolio/Utils/social_handle_icons.dart';
import 'package:url_launcher/url_launcher_string.dart';

class SocialHandleWidgets extends StatefulWidget {
  const SocialHandleWidgets({Key? key}) : super(key: key);

  @override
  State<SocialHandleWidgets> createState() => _SocialHandleWidgetsState();
}

void redirect(String url) async {
  await launchUrlString(url);
}

class _SocialHandleWidgetsState extends State<SocialHandleWidgets> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.only(left: width * 0.05, right: width * 0.05),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const SocialHandleIcon(
            redirecturl: "https://github.com/Siddharth-rajput2201",
            svgpath: "assets/images/githubsvg.svg",
            iconhovercolor: Colors.black87,
          ),
          SocialHandleIcon(
            svgpath: "assets/images/linkedinsvg.svg",
            redirecturl:
                "https://www.linkedin.com/in/siddharth-rajput-8111a1194/",
            iconhovercolor: Colors.blue[400]!,
          ),
          const SocialHandleIcon(
            redirecturl:
                "https://drive.google.com/file/d/1VKHADq2XX8OMX7FCIFtn8ivG-WNaAlLT/view?usp=sharing",
            iconhovercolor: Colors.white,
            svgpath: "assets/images/resumesvg2.svg",
          ),
        ],
      ),
    );
  }
}
