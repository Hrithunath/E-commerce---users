import 'package:e_commerce_shoes/presentation/Widget/button.dart';
import 'package:e_commerce_shoes/presentation/Widget/text.dart';
import 'package:e_commerce_shoes/presentation/Widget/textFormFeild.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Recovery extends StatelessWidget {
  Recovery({super.key});
  final formkey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(25),
          child: Form(
            key: formkey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const TextCustom(
                  text: "Recovery Password",
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
                const SizedBox(height: 25,),
                const TextCustom(
                  text:
                      "Please, enter your email address. You will\nreceive a link to create a new password via email ",
                  fontSize: 17,
                ),
                Padding(
                  padding: const EdgeInsets.all(25),
                  child: Column(
                    children: [
                      Textformfeildcustom(
                        keyboardType: TextInputType.emailAddress,
                        controller: emailController,
                        label: "Your Email",
                        prefixIcon: Icons.email,
                      ),
                      const SizedBox(height: 30,),
                       ButtonCustomized(
                      text: "Continue",
                     color: const Color.fromARGB(255, 207, 57, 233),
                      width: 300, 
                      height: 50,
                      borderRadius: 10,
                      onPressed: () {
                        resetPassword(context);
                      }),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }


  void resetPassword(BuildContext context)async{
     if (!formkey.currentState!.validate()) {
      return;
    }

      final email = emailController.text.trim();

   if (email.isNotEmpty) {
     
   
   try {
     await FirebaseAuth.instance
   .sendPasswordResetEmail(email: email);
    ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Password reset email sent. Check your inbox.'),
          ),
        );
        await Future.delayed(const Duration(seconds: 2));
            Navigator.pushReplacementNamed(context, "/login");
   } catch (e) {
     
       ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Failed to send password reset email: $e'),
            backgroundColor: Colors.red,
          ),
        );
   }
   }
  }
}
