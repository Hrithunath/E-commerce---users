import 'package:e_commerce_shoes/core/Theme/appcolors.dart';
import 'package:e_commerce_shoes/presentation/Widget/text.dart';
import 'package:flutter/material.dart';

class SignupOption extends StatelessWidget {
  const SignupOption({super.key});

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final screenHeight = mediaQuery.size.height;
    final screenWidth = mediaQuery.size.width;
    return Column(
      children: [
        Row(
          children: [
             SizedBox(width: screenWidth * 0.3),
            TextCustom(
              text: "Do you have an account? ",
              fontSize: screenHeight * 0.018,
              fontWeight: FontWeight.w300,
            ),
            TextCustom(
              onTap: () => Navigator.pushNamed(context, "/Login"),
              text: "Sign in",
              fontSize: screenHeight * 0.018,
              fontWeight: FontWeight.bold,
              color: AppColors.primarycolor,
            ),
          ],
        ),
      ],
    );
  }
}
