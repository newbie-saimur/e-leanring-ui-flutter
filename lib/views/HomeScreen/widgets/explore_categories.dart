import 'package:e_learning_ui/utils/colors.dart';
import 'package:e_learning_ui/widgets/custom_category_card.dart';
import 'package:flutter/material.dart';

class ExploreCategories extends StatelessWidget {
  final List<Map> exploreCategories;
  const ExploreCategories(this.exploreCategories, {super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Explore categories",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                Text(
                  "See all",
                  style: TextStyle(
                    color: AppColors.primaryColor,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            Expanded(
              child: SingleChildScrollView(
                child: GridView.builder(
                  itemCount: exploreCategories.length,
                  shrinkWrap: true,
                  primary: false,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 20,
                    crossAxisSpacing: 20,
                    childAspectRatio: 0.8,
                  ),
                  itemBuilder: (context, index) {
                    final data = exploreCategories[index];
                    return CustomCategoryCard(
                      categoryImage: data['img'],
                      categoryName: data['name'],
                      totalCourses: data['total_courses'],
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
