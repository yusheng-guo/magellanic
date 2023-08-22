import 'package:flutter/material.dart';
import 'package:magellanic/views/shared/app_style.dart';

class SortPage extends StatefulWidget {
  const SortPage({super.key});

  @override
  State<SortPage> createState() => _SortPageState();
}

class _SortPageState extends State<SortPage> {
  final List<String> items = List.generate(10, (index) => "Item $index");
  final List<String> tags = [
    'Artworks',
    'Collectibles',
    'Photography',
    'Gaming',
    'Music',
    'Domain Name',
  ];
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SingleChildScrollView(
          padding: const EdgeInsets.all(10),
          scrollDirection: Axis.horizontal,
          child: Wrap(
            spacing: 8,
            children: List.generate(
              tags.length,
              (index) => GestureDetector(
                onTap: () {
                  setState(() {
                    currentIndex = index;
                  });
                },
                child: Chip(
                  label: Text(
                    tags[index],
                    style: appstyle(12, Colors.black, FontWeight.w500),
                  ),
                  backgroundColor: currentIndex == index
                      ? Theme.of(context).colorScheme.primary
                      : Colors.grey[300],
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: GridView.count(
            crossAxisCount: 2,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            children: List.generate(
              items.length,
              (index) => Center(
                child: Image.network(
                  'https://picsum.photos/250?image=9',
                  fit: BoxFit.fitWidth,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
