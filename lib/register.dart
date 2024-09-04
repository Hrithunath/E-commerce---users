import 'package:e_commerce_shoes/Widget/button.dart';
import 'package:e_commerce_shoes/Widget/text.dart';
import 'package:e_commerce_shoes/Widget/textFormFeild.dart';
import 'package:flutter/material.dart';

class Register extends StatelessWidget {
  Register({super.key});
  final formkey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passWordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Padding(
        padding: const EdgeInsets.only(top: 05,),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          const TextCustom(
            text: "Let’s Get Started",
          ),
          const TextCustom(
            text: "Create an new account",
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
                    label: "Full Name",
                    hintText: "Enter your FullName",
                    prefixIcon: Icons.person,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Textformfeildcustom(
                    KeyboardType: TextInputType.visiblePassword,
                    controller: passWordController,
                    label: "Your Email",
                    hintText: "Enter your Email",
                    prefixIcon: Icons.lock,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Textformfeildcustom(
                    KeyboardType: TextInputType.visiblePassword,
                    controller: passWordController,
                    label: "Password",
                    hintText: "Enter your password",
                    prefixIcon: Icons.lock,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Textformfeildcustom(
                    KeyboardType: TextInputType.visiblePassword,
                    controller: passWordController,
                    label: "Password Again",
                    hintText: "Enter your password Again",
                    prefixIcon: Icons.lock,
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  ButtonCustomized(
                      text: "Sign Up",
                      color: const Color.fromARGB(255, 207, 57, 233),
                      width: 300, // Specific width
                      height: 50,
                      borderRadius: 10,
                      onPressed: () {}),
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
                        text: "Sign in",
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
