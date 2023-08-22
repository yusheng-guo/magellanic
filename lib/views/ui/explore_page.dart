import 'package:flutter/material.dart';
import 'package:magellanic/views/shared/app_style.dart';

class ExplorePage extends StatefulWidget {
  const ExplorePage({super.key});

  @override
  State<ExplorePage> createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Explore Page',
        style: appstyle(
          40,
          Colors.black,
          FontWeight.bold,
        ),
      ),
    );
  }
}
