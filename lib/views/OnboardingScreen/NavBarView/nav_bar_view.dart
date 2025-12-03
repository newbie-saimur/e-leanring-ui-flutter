import 'package:e_learning_ui/utils/colors.dart';
import 'package:e_learning_ui/views/HomeScreen/home_screen.dart';
import 'package:flutter/material.dart';

class NavBarView extends StatefulWidget {
  const NavBarView({super.key});

  @override
  State<NavBarView> createState() => _NavBarViewState();
}

class _NavBarViewState extends State<NavBarView> {
  int currentIndex = 0;

  List<Widget> screens = [
    HomeScreen(),
    Center(child: Text("My Learning")),
    Center(child: Text("Whitelist")),
    Center(child: Text("Settings")),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: AppColors.primaryColor,
        unselectedItemColor: Colors.black,
        showUnselectedLabels: true,
        currentIndex: currentIndex,
        type: BottomNavigationBarType.fixed,
        onTap: (value) {
          setState(() {
            currentIndex = value;
          });
        },
        items: [
          BottomNavigationBarItem(
            activeIcon: Icon(Icons.star),
            icon: Icon(Icons.star_border),
            label: "Featured",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.play_circle_outline),
            label: "My Learning",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: "Whitelist",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: "Settings",
          ),
        ],
      ),
    );
  }
}
