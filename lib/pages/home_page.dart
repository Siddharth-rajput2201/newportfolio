import 'package:flutter/material.dart';
import 'package:newportfolio/Utils/profile.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: Container(
          alignment: Alignment.center,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: ExactAssetImage("assets/images/background.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child: const Profile()),
    );
  }
}
