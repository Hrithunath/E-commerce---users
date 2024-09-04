import 'package:e_commerce_shoes/Widget/button.dart';
import 'package:e_commerce_shoes/Widget/text.dart';
import 'package:e_commerce_shoes/Widget/textFormFeild.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  Login({super.key});
  final formkey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passWordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          const TextCustom(
            text: "Welcome to LaceChase",
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
          const TextCustom(
            text: "Sign in to continue",
            fontSize: 17,
            color: Colors.grey,
          ),
          Form(
            key: formkey,
            child: Padding(
              padding: const EdgeInsets.all(25),
              child: Column(
                children: [
                  Textformfeildcustom(
                    KeyboardType: TextInputType.emailAddress,
                    controller: emailController,
                    label: "Email",
                    prefixIcon: Icons.email,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Textformfeildcustom(
                    KeyboardType: TextInputType.visiblePassword,
                    controller: passWordController,
                    label: "Password",
                    prefixIcon: Icons.lock_outline_rounded,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  ButtonCustomized(
                      text: "Sign in",
                      color: const Color.fromARGB(255, 207, 57, 233),
                      width: 300, // Specific width
                      height: 50,
                      borderRadius: 10,
                      onPressed: () {}),
                  const SizedBox(
                    height: 25,
                  ),
                  const TextCustom(
                    text: "OR",
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 123, 119, 119),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  const TextCustom(
                    text: "Login with Google",
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                    color: Color.fromARGB(255, 123, 119, 119),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  const TextCustom(
                    text: "Forgot Password",
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 207, 57, 233),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  const Row(
                    children: [
                      SizedBox(
                        width: 45,
                      ),
                      TextCustom(
                        text: "Don’t have a account? ",
                        fontSize: 15,
                        fontWeight: FontWeight.w300,
                      ),
                      TextCustom(
                        text: "Register",
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 207, 57, 233),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ]),
      )),
    );
  }
}
