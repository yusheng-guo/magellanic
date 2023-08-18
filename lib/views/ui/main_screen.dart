import 'package:flutter/material.dart';
import 'package:magellanic/views/shared/app_style.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE2E2E2),
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(5),
          child: Container(
              height: 42,
              // margin: const EdgeInsets.all(5),
              padding: const EdgeInsets.all(12),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(5)),
                color: Colors.black12,
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(Icons.home_outlined),
                  Icon(Icons.explore_outlined),
                  Icon(Icons.shopping_cart_outlined),
                  Icon(Icons.person_2_outlined),
                ],
              )),
        ),
      ),
      body: Center(
        child: Text(
          "Main Screen",
          style: appstyle(40, Colors.black, FontWeight.bold),
        ),
      ),
    );
  }
}
