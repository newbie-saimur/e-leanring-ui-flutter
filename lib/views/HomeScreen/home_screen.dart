import 'package:e_learning_ui/views/HomeScreen/widgets/app_bar.dart';
import 'package:e_learning_ui/views/HomeScreen/widgets/explore_categories.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    List<Map> exploreCategories = [
      {
        'img': 'assets/images/accounting.png',
        'name': 'Accounting',
        'total_courses': 20,
      },
      {
        'img': 'assets/images/photography.png',
        'name': 'Photography',
        'total_courses': 18,
      },
      {
        'img': 'assets/images/design.png',
        'name': 'Product Design',
        'total_courses': 10,
      },
      {
        'img': 'assets/images/marketing.png',
        'name': 'Marketing',
        'total_courses': 36,
      },
    ];
    return Scaffold(
      body: Column(
        children: [homeAppBar(size), ExploreCategories(exploreCategories)],
      ),
    );
  }
}
