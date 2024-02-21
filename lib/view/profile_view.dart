


import 'package:flutter/material.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({super.key});


  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Safe Drive App",
      home: Scaffold(
        backgroundColor: Colors.black54,

        body: Column(
          children: [
            Image.asset("assets/profileImg.jpg")

          ],
        ),
      ),

    );
  }
}
