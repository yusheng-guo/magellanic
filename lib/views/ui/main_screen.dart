import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:magellanic/blocs/bottom_navigation/bottom_navigation_bloc.dart';
import 'package:magellanic/views/shared/bottom_nav_widget.dart';
import 'package:magellanic/views/ui/cart_page.dart';
import 'package:magellanic/views/ui/explore_page.dart';
import 'package:magellanic/views/ui/home_page.dart';
import 'package:magellanic/views/ui/profile_page.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  List<Widget> pageList = const [
    HomePage(),
    ExplorePage(),
    CartPage(),
    ProfilePage(),
  ];

  // final BottomNavigationBloc bloc;

  int pageIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE2E2E2),
      body: pageList[pageIndex],
      // body: Center(
      //   child: Text(
      //     "Main Screen",
      //     style: appstyle(40, Colors.black, FontWeight.bold),
      //   ),
      // ),
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(0),
          child: Container(
            height: 52,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(5)),
              color: Colors.black12,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                BottomNavWidget(
                  icon: Icons.home_outlined,
                  text: 'Home',
                  onTap: () {
                    setState(() {
                      pageIndex = 0;
                    });
                  },
                ),
                BottomNavWidget(
                  icon: Icons.explore_outlined,
                  text: 'Explore',
                  onTap: () {
                    setState(() {
                      pageIndex = 1;
                    });
                  },
                ),
                BottomNavWidget(
                  icon: Icons.shopping_cart_outlined,
                  text: 'Cart',
                  onTap: () {
                    setState(() {
                      pageIndex = 2;
                    });
                  },
                ),
                BottomNavWidget(
                  icon: Icons.person_2_outlined,
                  text: 'Profile',
                  onTap: () {
                    setState(() {
                      pageIndex = 3;
                    });
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

List<BottomNavigationBarItem> bottomNavItems = const <BottomNavigationBarItem>[
  BottomNavigationBarItem(
    icon: Icon(Icons.home_outlined),
    label: 'Home',
  ),
  BottomNavigationBarItem(
    icon: Icon(Icons.explore_outlined),
    label: 'Explore',
  ),
  BottomNavigationBarItem(
    icon: Icon(Icons.shopping_cart_outlined),
    label: 'Cart',
  ),
  BottomNavigationBarItem(
    icon: Icon(Icons.person_2_outlined),
    label: 'Me',
  ),
];

const List<Widget> bottomNavScreen = <Widget>[
  HomePage(),
  ExplorePage(),
  CartPage(),
  ProfilePage(),
];

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<BottomNavigationBloc, BottomNavigationState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          body: Center(child: bottomNavScreen.elementAt(state.currentIndex)),
          bottomNavigationBar: BottomNavigationBar(
            items: bottomNavItems,
            currentIndex: state.currentIndex,
            selectedItemColor: Theme.of(context).colorScheme.primary,
            unselectedItemColor: Colors.grey,
            onTap: (index) {
              BlocProvider.of<BottomNavigationBloc>(context)
                  .add(TabSelectedEvent(index));
            },
          ),
        );
      },
    );
  }
}
