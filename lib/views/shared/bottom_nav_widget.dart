import 'package:flutter/material.dart';
import 'package:magellanic/views/shared/app_style.dart';

class BottomNavWidget extends StatelessWidget {
  final IconData icon;
  final String text;
  final void Function()? onTap;

  const BottomNavWidget({
    super.key,
    required this.icon,
    required this.text,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              color: Colors.black,
            ),
            Text(
              text,
              style: appstyle(11, Colors.black, FontWeight.normal),
            ),
          ],
        ),
      ),
    );
  }
}
