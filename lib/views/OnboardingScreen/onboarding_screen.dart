import 'package:e_learning_ui/utils/colors.dart';
import 'package:e_learning_ui/views/OnboardingScreen/NavBarView/nav_bar_view.dart';
import 'package:e_learning_ui/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [AppColors.secondaryColor, AppColors.primaryColor],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Image.asset("assets/images/onboarding.png"),
            Container(
              height: size.height * .4,
              width: size.width * 0.9,
              margin: EdgeInsets.only(bottom: 16),
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 32),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(24),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Discover your next skill\nLearn anything you want!",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Discover the things you want to\nlearn and grow with them",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.black54),
                  ),
                  CustomButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) => NavBarView()),
                      );
                    },
                    title: "Get Started",
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
