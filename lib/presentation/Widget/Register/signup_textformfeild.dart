// import 'package:e_commerce_shoes/core/utils/validator.dart';
// import 'package:e_commerce_shoes/presentation/Widget/textFormFeild.dart';
// import 'package:flutter/material.dart';

// class SignupTextformfeild extends StatelessWidget {
//   SignupTextformfeild({super.key});
//   final formkey = GlobalKey<FormState>();
//   final nameController = TextEditingController();
//   final emailController = TextEditingController();
//   final passwordController = TextEditingController();
//   final passwordAgainController = TextEditingController();
//   @override
//   Widget build(BuildContext context) {
//     final mediaQuery = MediaQuery.of(context);
//     final screenHeight = mediaQuery.size.height;
//     final screenWidth = mediaQuery.size.width;
//     return Form(
//       key: formkey,
//       child: Padding(
//         padding: EdgeInsets.symmetric(
//           horizontal: screenWidth * 0.1,
//           vertical: screenHeight * 0.03,
//         ),
//         child: Column(
//           children: [
//             Textformfeildcustom(
//               keyboardType: TextInputType.name,
//               controller: nameController,
//               label: "Full Name",
//               hintText: "Enter your Full Name",
//               prefixIcon: Icons.person,
//               validator: (value) => Validator.validateUsername(value),
//             ),
//             SizedBox(height: screenHeight * 0.02),
//             Textformfeildcustom(
//               keyboardType: TextInputType.emailAddress,
//               controller: emailController,
//               label: "Your Email",
//               hintText: "Enter your Email",
//               prefixIcon: Icons.email,
//               validator: (value) => Validator.validateEmail(value),
//             ),
//             SizedBox(height: screenHeight * 0.02),
//             Textformfeildcustom(
//               keyboardType: TextInputType.visiblePassword,
//               controller: passwordController,
//               label: "Password",
//               hintText: "Enter your password",
//               prefixIcon: Icons.lock,
//               obscureText: true,
//               validator: (value) => Validator.validatePassword(value),
//             ),
//             SizedBox(height: screenHeight * 0.02),
//             Textformfeildcustom(
//               keyboardType: TextInputType.visiblePassword,
//               controller: passwordAgainController,
//               label: "Password Again",
//               hintText: "Re-enter your password",
//               prefixIcon: Icons.lock,
//               obscureText: true,
//               validator: (value) => Validator.validateAgainPassword(
//                   value, passwordController.text),
//             ),
//             SizedBox(height: screenHeight * 0.04),
//           ],
//         ),
//       ),
//     );
//   }
// }
