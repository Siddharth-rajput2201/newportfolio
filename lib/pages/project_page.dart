import 'package:flutter/material.dart';
import 'package:newportfolio/Utils/project_tile.dart';

class ProjectPage extends StatefulWidget {
  const ProjectPage({Key? key}) : super(key: key);

  @override
  State<ProjectPage> createState() => _ProjectPageState();
}

class _ProjectPageState extends State<ProjectPage> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: ExactAssetImage("assets/images/background2.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            Row(
              children: [
                ProjectTile(
                    projectName: "Hassle Free",
                    webUrl: "https://hasslefreeweb.herokuapp.com/#/",
                    showWebIcon: true,
                    width: width * 0.25,
                    imagepath: "assets/images/Hassle_Free_Logo.png",
                    githuburl:
                        "https://github.com/Siddharth-rajput2201/Hassle_Free",
                    downloadurl:
                        "https://drive.google.com/file/d/1FYNXTvBcgIz2XViZshBxVYI0lNN29Oy2/view?usp=sharing",
                    imageHeight: 170,
                    imageWidth: 170,
                    projectDescription:
                        "It is an Android Application ,To Manage your password's It's Front-end is made using Flutter and it's backend is made using flask and utilizing Postgres SQL as it's database. The password are salted , hashed and encrypted securely before storing in database soo that NO ONE CAN ACCESS YOUR PASSWORD EXPECT YOU.")
              ],
            ),
          ],
        ),
      ),
    );
  }
}
