import 'package:e_commerce_shoes/domain/model/user_model.dart';
import 'package:e_commerce_shoes/presentation/Widget/button.dart';
import 'package:e_commerce_shoes/presentation/Widget/text.dart';
import 'package:e_commerce_shoes/presentation/Widget/textFormFeild.dart';
import 'package:e_commerce_shoes/presentation/bloc/auth_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginWrapper extends StatelessWidget {
  const LoginWrapper({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthBloc(),
      child: Login(),
    );
  }
}

class Login extends StatelessWidget {
  Login({super.key});
  final formkey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passWordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final authblocc = BlocProvider.of<AuthBloc>(context);
    return BlocBuilder<AuthBloc, AuthState>(
      builder: (context, state) {
   
        if (state is AuthLoading) {
          
          return const CircularProgressIndicator(color: Colors.pink);
        }
      

        if (state is Authenticated) {
         WidgetsBinding.instance.addPostFrameCallback((_){
          Navigator.pushNamedAndRemoveUntil(context, "/Home",(route)=>false);
         });
        }
        return SafeArea(
      child: Scaffold(
          body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          TextCustom(
            text: "Welcome to LaceChase",
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
           TextCustom(
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
                    keyboardType: TextInputType.emailAddress,
                    controller: emailController,
                    label: "Email",
                    prefixIcon: Icons.email,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Textformfeildcustom(
                    keyboardType: TextInputType.visiblePassword,
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
                      onPressed: ()async {
                      UserModel user = UserModel(
                       
                        email: emailController.text.trim(),
                        password: passWordController.text.trim()
                        
                      );
                  context.read<AuthBloc>().add(SignUpEvent(user: user));

                       Navigator.pushNamed(context, "/Login");

                      }),
                  const SizedBox(
                    height: 25,
                  ),
                   TextCustom(
                    text: "OR",
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 123, 119, 119),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                   TextCustom(
                    text: "Login with Google",
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                    color: Color.fromARGB(255, 123, 119, 119),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                   TextCustom(
                    onTap: () => Navigator.pushNamed(context,"/Recovery"),
                    text: "Forgot Password",
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: const Color.fromARGB(255, 207, 57, 233),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Row(
                    children: [
                      const SizedBox(
                        width: 45,
                      ),
                       TextCustom(
                        text: "Don’t have a account? ",
                        fontSize: 15,
                        fontWeight: FontWeight.w300,
                      ),
                      TextCustom(
                        onTap: () => Navigator.pushNamed(context,"/Register"),
                        text: "Register",
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: const Color.fromARGB(255, 207, 57, 233),
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
      },
    );
  }
}
