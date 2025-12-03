import 'package:e_learning_ui/utils/colors.dart';
import 'package:flutter/material.dart';

Widget homeAppBar(Size size) {
  return Container(
    padding: EdgeInsets.only(top: 54, left: 16, right: 16, bottom: 16),
    width: size.width,
    height: size.height * 0.28,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.only(
        bottomLeft: Radius.circular(30),
        bottomRight: Radius.circular(30),
      ),
      gradient: LinearGradient(
        colors: [AppColors.secondaryColor, AppColors.primaryColor],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
      ),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Hello,",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 32,
                  ),
                ),
                Text(
                  "Good Morning",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.all(4),
              decoration: BoxDecoration(
                color: Colors.white38,
                shape: BoxShape.circle,
              ),
              child: Stack(
                children: [
                  Icon(Icons.notifications, color: Colors.white),
                  Positioned(
                    top: 4,
                    right: 4,
                    child: InkWell(
                      onTap: () {},
                      child: Container(
                        height: 7,
                        width: 7,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.orange,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40),
            color: Colors.white,
          ),
          child: TextFormField(
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: "Search Your Topic",
              contentPadding: EdgeInsets.symmetric(vertical: 12),
              suffixIcon: Icon(Icons.mic, color: AppColors.primaryColor),
              prefixIcon: Icon(Icons.search, color: Colors.black54),
            ),
          ),
        ),
      ],
    ),
  );
}
