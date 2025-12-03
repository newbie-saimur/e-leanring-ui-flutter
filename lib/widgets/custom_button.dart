import 'package:e_learning_ui/utils/colors.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String? title;
  final Color? backgroundColor;
  final double? fontSize;
  final Color? color;
  final double? radius;
  final IconData? icon;
  final void Function()? onPressed;

  const CustomButton({
    super.key,
    this.onPressed,
    this.title,
    this.backgroundColor,
    this.fontSize,
    this.color,
    this.radius,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style:
          ElevatedButton.styleFrom(
            padding: EdgeInsets.symmetric(vertical: 12, horizontal: 20),
            elevation: 6,
            backgroundColor: backgroundColor ?? AppColors.primaryColor,
            shadowColor: AppColors.primaryColor.withValues(alpha: 0.4),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(radius ?? 8),
            ),
          ).copyWith(
            backgroundColor: WidgetStateProperty.all(
              backgroundColor ?? AppColors.primaryColor,
            ),
          ),
      child: icon == null
          ? Text(
              title ?? "Button Text",
              style: TextStyle(
                color: color ?? Colors.white,
                fontSize: fontSize ?? 18,
                fontWeight: FontWeight.w500,
              ),
            )
          : Icon(icon, color: Colors.white, size: 24),
    );
  }
}
