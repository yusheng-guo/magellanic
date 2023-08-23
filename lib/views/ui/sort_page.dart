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
              (index) => Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AspectRatio(
                      aspectRatio: 4 / 3,
                      child: Stack(
                        children: [
                          Container(
                            decoration: const BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20.0)),
                            ),
                            child: FractionallySizedBox(
                              alignment: Alignment.center,
                              widthFactor: 1.0,
                              heightFactor: 1.0,
                              child: Image.network(
                                'https://picsum.photos/250?image=9',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),

                          // 头像
                          Positioned(
                            left: 0.0,
                            bottom: 0.0,
                            child: FractionalTranslation(
                              translation: const Offset(0.25, 0.25),
                              child: Container(
                                width: 40.0,
                                height: 40.0,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    color: Colors.white,
                                    width: 2.0,
                                  ),
                                ),
                                child: const CircleAvatar(
                                  backgroundImage: NetworkImage(
                                      'https://i.seadn.io/gcs/files/a96ca7124ef59546be829798c52c2f5f.png?auto=format&dpr=1&w=1000'),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 16, left: 8),
                      child: Text(
                        'NFT Collection Title NFT Collection Title NFT Collection Title',
                        style: TextStyle(
                          fontSize: 16.0,
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          overflow: TextOverflow.ellipsis, // 显示省略号
                        ),
                        textAlign: TextAlign.start,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
