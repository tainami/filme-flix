import 'package:filme_flix/core/theme/app_colors.dart';
import 'package:flutter/material.dart';

enum CustomButtonTheme { filled, outlined }

class CustomButton extends StatelessWidget {
  final String text;
  final CustomButtonTheme theme;
  final VoidCallback onPressed;

  const CustomButton({
    super.key,
    required this.text,
    required this.theme,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    ButtonStyle buttonStyle;

    if (theme == CustomButtonTheme.outlined) {
      buttonStyle = TextButton.styleFrom(
        foregroundColor: AppColors.primaryGreen,
        side: const BorderSide(
          color: AppColors.primaryGreen,
          width: 2,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ),
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
      );
    } else {
      buttonStyle = TextButton.styleFrom(
        backgroundColor: AppColors.primaryGreen,
        foregroundColor: AppColors.gray900,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ),
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
      );
    }

    return TextButton(
      style: buttonStyle,
      onPressed: onPressed,
      child: Text(
        text,
        style: const TextStyle(fontSize: 16),
      ),
    );
  }
}
