import 'package:flutter/material.dart';

class ProfilePhoto extends StatefulWidget {
  const ProfilePhoto({Key? key}) : super(key: key);

  @override
  State<ProfilePhoto> createState() => _ProfilePhotoState();
}

class _ProfilePhotoState extends State<ProfilePhoto> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    //  double width = MediaQuery.of(context).size.width;
    return Container(
      padding: const EdgeInsets.all(3 / 2), // Border width
      decoration:
          const BoxDecoration(color: Colors.white, shape: BoxShape.circle),
      child: ClipOval(
        child: SizedBox.fromSize(
          size: Size.fromRadius(height * 0.135), // Image radius
          child: Image.asset('assets/images/profile_photo.jpeg',
              fit: BoxFit.cover),
        ),
      ),
    );
  }
}
