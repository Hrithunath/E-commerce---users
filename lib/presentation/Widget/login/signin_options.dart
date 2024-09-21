// import 'package:e_commerce_shoes/core/Theme/appcolors.dart';
// import 'package:e_commerce_shoes/presentation/Widget/text.dart';
// import 'package:flutter/material.dart';

// class SigninOptions extends StatelessWidget {
//   const SigninOptions({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final mediaQuery = MediaQuery.of(context);
//     final screenWidth = mediaQuery.size.width;
//     final screenHeight = mediaQuery.size.height;
//     return Padding(
//       padding: EdgeInsets.all(screenWidth * 0.05),
//       child: Column(
//         children: [
//           TextCustom(
//             text: "OR",
//             fontSize: screenWidth * 0.04,
//             fontWeight: FontWeight.bold,
//             color: AppColors.kgreylight,
//           ),
//           SizedBox(height: screenHeight * 0.025),
//           TextCustom(
//             text: "Login with Google",
//             fontSize: screenWidth * 0.045,
//             fontWeight: FontWeight.w500,
//             color: AppColors.kgreylight,
//           ),
//           SizedBox(height: screenHeight * 0.025),
//           TextCustom(
//             onTap: () => Navigator.pushNamed(context, "/Recovery"),
//             text: "Forgot Password",
//             fontSize: screenWidth * 0.045,
//             fontWeight: FontWeight.bold,
//             color: AppColors.primarycolor,
//           ),
//           SizedBox(height: screenHeight * 0.025),
//           Row(
//             children: [
//               SizedBox(width: screenHeight * 0.075),
//               TextCustom(
//                 text: "Don’t have an account? ",
//                 fontSize: screenWidth * 0.04,
//                 fontWeight: FontWeight.w300,
//               ),
//               TextCustom(
//                 onTap: () => Navigator.pushNamed(context, "/Register"),
//                 text: "Register",
//                 fontSize: screenWidth * 0.04,
//                 fontWeight: FontWeight.bold,
//                 color: AppColors.primarycolor,
//               ),
//             ],
//           ),
//           SizedBox(height: screenHeight * 0.025),
//         ],
//       ),
//     );
//   }
// }
