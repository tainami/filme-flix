import 'package:filme_flix/core/theme/app_colors.dart';
import 'package:filme_flix/shared/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: AppColors.gray900,
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomButton(
                  text: 'texto',
                  theme: CustomButtonTheme.filled,
                  onPressed: () {},
                ),
                CustomButton(
                  text: 'texto',
                  theme: CustomButtonTheme.outlined,
                  onPressed: () {},
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
