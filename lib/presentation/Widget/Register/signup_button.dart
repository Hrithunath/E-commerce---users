// import 'package:e_commerce_shoes/core/Theme/appcolors.dart';
// import 'package:e_commerce_shoes/domain/model/user_model.dart';
// import 'package:e_commerce_shoes/presentation/Widget/button.dart';
// import 'package:e_commerce_shoes/presentation/bloc/auth_bloc.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';

// class SignupButton extends StatelessWidget {
//   SignupButton({super.key});

//   final formkey = GlobalKey<FormState>();
//   final nameController = TextEditingController();
//   // final emailController = TextEditingController();
//   // final passwordController = TextEditingController();
//   // final passwordAgainController = TextEditingController();
//   @override
//   Widget build(BuildContext context) {
//      final mediaQuery = MediaQuery.of(context);
//     final screenHeight = mediaQuery.size.height;
//     final screenWidth = mediaQuery.size.width;
//     return Column(
//       children: [
//         ButtonCustomized(
//           text: "Sign Up",
//           color: AppColors.primarycolor,
//           width: screenWidth * 0.8,
//           height: screenHeight * 0.07,
//           borderRadius: 10,
//           onPressed: () async {
//             if (formkey.currentState!.validate()) {
//               UserModel user = UserModel(
//                 name: nameController.text,
//                 email: emailController.text,
//                 password: passwordController.text,
//                 passwordAgain: passwordAgainController.text,
//               );
//               context.read<AuthBloc>().add(SignUpEvent(user: user));

//               Navigator.pushNamed(context, "/Login");
//             }
//           },
//         ),
//         SizedBox(height: screenHeight * 0.03),
//       ],
//     );
//   }
// }
