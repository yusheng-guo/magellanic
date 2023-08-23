import 'package:flutter/material.dart';
import 'package:magellanic/views/shared/app_style.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      // child: Text(
      //   'Profile Page',
      //   style: appstyle(
      //     40,
      //     Colors.black,
      //     FontWeight.bold,
      //   ),
      // ),
      // child: Image.network(
      //   "https://1.bp.blogspot.com/-btmcug58Bws/VgdDaWWFfGI/AAAAAAAAA98/4VNmFyJxv7Q/s1600/Tupai%2Bpaling%2Bbagus%2Bdan%2Bmahal.jpeg",
      //   fit: BoxFit.fitWidth,
      // ),
      child: Image.network(
          'https://i.seadn.io/gcs/files/a96ca7124ef59546be829798c52c2f5f.png?auto=format&dpr=1&w=1000'),
    );
  }
}
