import 'package:e_learning_ui/views/CourseDetailsScreen/course_details_screen.dart';
import 'package:flutter/material.dart';

class CustomCategoryCard extends StatelessWidget {
  final String categoryImage;
  final String categoryName;
  final int totalCourses;

  const CustomCategoryCard({
    super.key,
    required this.categoryImage,
    required this.categoryName,
    required this.totalCourses,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => CourseDetailsScreen(courseName: categoryName),
          ),
        );
      },
      child: Container(
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 5,
              spreadRadius: .5,
              blurStyle: BlurStyle.outer,
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Align(
              alignment: Alignment.center,
              child: Image.asset(categoryImage, height: 100, width: 120),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  categoryName,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Text(
                  "$totalCourses Courses",
                  style: TextStyle(
                    color: Colors.grey.withValues(alpha: .7),
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
