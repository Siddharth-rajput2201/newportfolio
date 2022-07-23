import 'package:flutter/material.dart';
import 'package:newportfolio/Utils/more_project.dart';
import 'package:newportfolio/Utils/project_tile.dart';

class ProjectPage extends StatefulWidget {
  const ProjectPage({Key? key}) : super(key: key);

  @override
  State<ProjectPage> createState() => _ProjectPageState();
}

class _ProjectPageState extends State<ProjectPage> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 800) {
          return const BrowserProject();
        } else {
          return const MobileProject();
        }
      },
    );
  }
}

class BrowserProject extends StatefulWidget {
  const BrowserProject({Key? key}) : super(key: key);

  @override
  State<BrowserProject> createState() => _BrowserProjectState();
}

class _BrowserProjectState extends State<BrowserProject> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: ExactAssetImage("assets/images/background2.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ProjectTile(
                    projectName: "Hassle Free",
                    webUrl: "https://hasslefreeweb.herokuapp.com/#/",
                    showWebIcon: true,
                    showDownloadIcon: true,
                    width: width * 0.25,
                    imagepath: "assets/images/Hassle_Free_Logo.png",
                    githuburl:
                        "https://github.com/Siddharth-rajput2201/Hassle_Free",
                    downloadurl:
                        "https://drive.google.com/file/d/1FYNXTvBcgIz2XViZshBxVYI0lNN29Oy2/view?usp=sharing",
                    imageHeight: height * 0.20,
                    imageWidth: width * 0.10,
                    projectDescription:
                        "It is an Cross Platform Application ,To Manage your password's It's Front-end is made using Flutter and it's backend is made using flask and utilizing Postgres SQL as it's database. The password are salted , hashed and encrypted securely before storing in database soo that NO ONE CAN ACCESS YOUR PASSWORD EXPECT YOU.",
                  ),
                  ProjectTile(
                    showDownloadIcon: false,
                    projectName: "Hassle Free BackEnd",
                    webUrl: "",
                    showWebIcon: false,
                    width: width * 0.25,
                    imagepath: "assets/images/Hassle_Free_Logo.png",
                    githuburl:
                        "https://github.com/Siddharth-rajput2201/Hassle-Free-Backend",
                    downloadurl: "",
                    imageHeight: height * 0.20,
                    imageWidth: width * 0.10,
                    projectDescription:
                        "The Hassle Backend is an flask application having PostgreSQL as its Database & it is powered using HEROKU.The main priority of the application is to provide security & privacy to the user.Each account created on hassle free is verified by using email verification of the user.The Authencation is done using JWT and entire database is encrypted inclcuding the user passwords.The Decryption Keys are only know to user.",
                  ),
                  ProjectTile(
                    showDownloadIcon: true,
                    projectName: "Padhlo App",
                    webUrl: "",
                    showWebIcon: false,
                    width: width * 0.25,
                    imagepath: "assets/images/padhlologo.png",
                    githuburl: "https://github.com/Siddharth-rajput2201/Padhlo",
                    downloadurl:
                        "https://drive.google.com/file/d/11o_aend60xhWsT0ftVa7Usn76UjjXHUB/view?usp=sharing",
                    imageHeight: height * 0.20,
                    imageWidth: width * 0.10,
                    projectDescription:
                        "It is an Android Application which helps student secure study material across all the courses. This application is made using Futter and back end is made using Node.js utilising Mongo DB as its database.",
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ProjectTile(
                    showDownloadIcon: false,
                    projectName: "Padhlo BackEnd",
                    webUrl: "",
                    showWebIcon: false,
                    width: width * 0.25,
                    imagepath: "assets/images/padhlologo.png",
                    githuburl:
                        "https://github.com/Siddharth-rajput2201/Padhlo-Backend",
                    downloadurl: "",
                    imageHeight: height * 0.20,
                    imageWidth: width * 0.10,
                    projectDescription:
                        "It is an Node.JS application having MONGODB as its Database and this application is powered by HEROKU. This application utilized the power of MONGODB NO-SQL type database which supports the application dynamic nature way of provides study material accross the levels",
                  ),
                  ProjectTile(
                    showDownloadIcon: true,
                    projectName: "Home Price Predictor",
                    webUrl: "",
                    showWebIcon: false,
                    width: width * 0.25,
                    imagepath: "assets/images/homepricepredictorapplogo.png",
                    githuburl:
                        "https://github.com/Siddharth-rajput2201/Home_Price_Predictor_App",
                    downloadurl:
                        "https://drive.google.com/file/d/1EDV8ZL4WmvAdx0sW56Y_naTP09zZP8ZD/view?usp=sharing",
                    imageHeight: height * 0.20,
                    imageWidth: width * 0.10,
                    projectDescription:
                        "Predictor is Android Application which predict price of a home by taking simple input of BHK , Location , No. Of Bathroom & Total Area in SQFT. This Application utilizes the power of machine learning to accurately predict the price. Android application is made using Flutter , utilizing flask as it's web framework. Machine Learning Algorithm used Multilinear Regression with an accuracy of 88% .",
                  ),
                  ProjectTile(
                    showDownloadIcon: false,
                    projectName: "Home Price Predictor BackEnd",
                    webUrl: "",
                    showWebIcon: false,
                    width: width * 0.25,
                    imagepath: "assets/images/homepricepredictorapplogo.png",
                    githuburl:
                        "https://github.com/Siddharth-rajput2201/Home_Price_Predictor_Backend",
                    downloadurl: "",
                    imageHeight: height * 0.20,
                    imageWidth: width * 0.10,
                    projectDescription:
                        "Predictor BackEnd made is using Flask Application which predict price of a home by taking simple input of BHK , Location , No. Of Bathroom & Total Area in SQFT. This Application utilizes the power of machine learning to accurately predict the price. Machine Learning Algorithm used Multilinear Regression with an accuracy of 88% .",
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ProjectTile(
                    showDownloadIcon: true,
                    projectName: "Covid 19 Tracker",
                    webUrl: "",
                    showWebIcon: false,
                    width: width * 0.25,
                    imagepath: "assets/images/coivd19tracker.png",
                    githuburl:
                        "https://github.com/Siddharth-rajput2201/Covid19_Tracker",
                    downloadurl:
                        "https://drive.google.com/file/d/1KwpL9ikgXcSkhfmc5NNEqlnL23YUtgTN/view?usp=sharing",
                    imageHeight: height * 0.20,
                    imageWidth: width * 0.10,
                    projectDescription:
                        "This is an Android Application that tracks the Count of People Affected by Novel Covid - 19 . In this application Government Api's has been to provide Correct information.This application is made using Flutter .",
                  ),
                  MoreProject(width: width * 0.30, height: height)
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class MobileProject extends StatefulWidget {
  const MobileProject({Key? key}) : super(key: key);

  @override
  State<MobileProject> createState() => _MobileProjectState();
}

class _MobileProjectState extends State<MobileProject> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: ExactAssetImage("assets/images/background2.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              ProjectTile(
                projectName: "Hassle Free",
                webUrl: "https://hasslefreeweb.herokuapp.com/#/",
                showWebIcon: true,
                showDownloadIcon: true,
                width: width * 0.8,
                imagepath: "assets/images/Hassle_Free_Logo.png",
                githuburl:
                    "https://github.com/Siddharth-rajput2201/Hassle_Free",
                downloadurl:
                    "https://drive.google.com/file/d/1FYNXTvBcgIz2XViZshBxVYI0lNN29Oy2/view?usp=sharing",
                imageHeight: height * 0.20,
                imageWidth: width * 0.35,
                projectDescription:
                    "It is an Cross Platform Application ,To Manage your password's It's Front-end is made using Flutter and it's backend is made using flask and utilizing Postgres SQL as it's database. The password are salted , hashed and encrypted securely before storing in database soo that NO ONE CAN ACCESS YOUR PASSWORD EXPECT YOU.",
              ),
              ProjectTile(
                showDownloadIcon: false,
                projectName: "Hassle Free BackEnd",
                webUrl: "",
                showWebIcon: false,
                width: width * 0.8,
                imagepath: "assets/images/Hassle_Free_Logo.png",
                githuburl:
                    "https://github.com/Siddharth-rajput2201/Hassle-Free-Backend",
                downloadurl: "",
                imageHeight: height * 0.20,
                imageWidth: width * 0.35,
                projectDescription:
                    "The Hassle Backend is an flask application having PostgreSQL as its Database & it is powered using HEROKU.The main priority of the application is to provide security & privacy to the user.Each account created on hassle free is verified by using email verification of the user.The Authencation is done using JWT and entire database is encrypted inclcuding the user passwords.The Decryption Keys are only know to user.",
              ),
              ProjectTile(
                showDownloadIcon: true,
                projectName: "Padhlo App",
                webUrl: "",
                showWebIcon: false,
                width: width * 0.8,
                imagepath: "assets/images/padhlologo.png",
                githuburl: "https://github.com/Siddharth-rajput2201/Padhlo",
                downloadurl:
                    "https://drive.google.com/file/d/11o_aend60xhWsT0ftVa7Usn76UjjXHUB/view?usp=sharing",
                imageHeight: height * 0.20,
                imageWidth: width * 0.35,
                projectDescription:
                    "It is an Android Application which helps student secure study material across all the courses. This application is made using Futter and back end is made using Node.js utilising Mongo DB as its database.",
              ),
              ProjectTile(
                showDownloadIcon: false,
                projectName: "Padhlo BackEnd",
                webUrl: "",
                showWebIcon: false,
                width: width * 0.8,
                imagepath: "assets/images/padhlologo.png",
                githuburl:
                    "https://github.com/Siddharth-rajput2201/Padhlo-Backend",
                downloadurl: "",
                imageHeight: height * 0.20,
                imageWidth: width * 0.35,
                projectDescription:
                    "It is an Node.JS application having MONGODB as its Database and this application is powered by HEROKU. This application utilized the power of MONGODB NO-SQL type database which supports the application dynamic nature way of provides study material accross the levels",
              ),
              ProjectTile(
                showDownloadIcon: true,
                projectName: "Home Price Predictor",
                webUrl: "",
                showWebIcon: false,
                width: width * 0.8,
                imagepath: "assets/images/homepricepredictorapplogo.png",
                githuburl:
                    "https://github.com/Siddharth-rajput2201/Home_Price_Predictor_App",
                downloadurl:
                    "https://drive.google.com/file/d/1EDV8ZL4WmvAdx0sW56Y_naTP09zZP8ZD/view?usp=sharing",
                imageHeight: height * 0.20,
                imageWidth: width * 0.35,
                projectDescription:
                    "Predictor is Android Application which predict price of a home by taking simple input of BHK , Location , No. Of Bathroom & Total Area in SQFT. This Application utilizes the power of machine learning to accurately predict the price. Android application is made using Flutter , utilizing flask as it's web framework. Machine Learning Algorithm used Multilinear Regression with an accuracy of 88% .",
              ),
              ProjectTile(
                showDownloadIcon: false,
                projectName: "Home Price Predictor BackEnd",
                webUrl: "",
                showWebIcon: false,
                width: width * 0.8,
                imagepath: "assets/images/homepricepredictorapplogo.png",
                githuburl:
                    "https://github.com/Siddharth-rajput2201/Home_Price_Predictor_Backend",
                downloadurl: "",
                imageHeight: height * 0.20,
                imageWidth: width * 0.35,
                projectDescription:
                    "Predictor BackEnd made is using Flask Application which predict price of a home by taking simple input of BHK , Location , No. Of Bathroom & Total Area in SQFT. This Application utilizes the power of machine learning to accurately predict the price. Machine Learning Algorithm used Multilinear Regression with an accuracy of 88% .",
              ),
              ProjectTile(
                showDownloadIcon: true,
                projectName: "Covid 19 Tracker",
                webUrl: "",
                showWebIcon: false,
                width: width * 0.8,
                imagepath: "assets/images/coivd19tracker.png",
                githuburl:
                    "https://github.com/Siddharth-rajput2201/Covid19_Tracker",
                downloadurl:
                    "https://drive.google.com/file/d/1KwpL9ikgXcSkhfmc5NNEqlnL23YUtgTN/view?usp=sharing",
                imageHeight: height * 0.20,
                imageWidth: width * 0.35,
                projectDescription:
                    "This is an Android Application that tracks the Count of People Affected by Novel Covid - 19 . In this application Government Api's has been to provide Correct information.This application is made using Flutter .",
              ),
              MoreProject(width: width * 0.8, height: height)
            ],
          ),
        ),
      ),
    );
  }
}
