import "package:e_learning_ui/utils/colors.dart";
import "package:e_learning_ui/views/OnboardingScreen/onboarding_screen.dart";
import "package:flutter/material.dart";

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "E-Learning UI Demo",
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: AppColors.backgroundColor,
      ),
      home: OnboardingScreen(),
    );
  }
}
