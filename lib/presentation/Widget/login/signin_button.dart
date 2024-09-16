// import 'package:e_commerce_shoes/core/Theme/appcolors.dart';
// import 'package:e_commerce_shoes/domain/model/user_model.dart';
// import 'package:e_commerce_shoes/presentation/Widget/button.dart';
// import 'package:e_commerce_shoes/presentation/bloc/auth_bloc.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';

// class SignButton extends StatelessWidget {
//   SignButton({super.key});
//   final formkey = GlobalKey<FormState>();
//   final emailController = TextEditingController();
//   final passWordController = TextEditingController();
//   @override
//   Widget build(BuildContext context) {
//     final mediaQuery = MediaQuery.of(context);
//     final screenWidth = mediaQuery.size.width;
//     final screenHeight = mediaQuery.size.height;
//     return Column(
//       children: [
//         ButtonCustomized(
//           text: "Sign in",
//           color: AppColors.primarycolor,
//           width: screenWidth * 0.7,
//           height: screenHeight * 0.07,
//           borderRadius: 10,
//           onPressed: () async {
//             if (formkey.currentState!.validate()) {
//               UserModel user = UserModel(
//                 email: emailController.text.trim(),
//                 password: passWordController.text.trim(),
//               );
//               context.read<AuthBloc>().add(SignInEvent(
//                   email: emailController.text,
//                   password: passWordController.text));
//             }
//           },
//         ),
//         SizedBox(height: screenHeight * 0.025),
//       ],
//     );
//   }
// }
