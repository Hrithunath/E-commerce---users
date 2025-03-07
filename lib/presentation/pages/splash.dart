import 'package:e_commerce_shoes/presentation/bloc/auth_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
class SplashWrapper extends StatelessWidget {
  const SplashWrapper({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthBloc()..add(CheckLoginStatusEvent()),
      child: const SplashScreen(),
    );
  }
}
class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
      if (state is Authenticated) {
        Navigator.pushReplacementNamed(context, "/HomeBottom");
      }else if(state is UnAuthenticated){
       Navigator.pushReplacementNamed(context, "/Login");
      }
      },
      child:Scaffold(
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          mainAxisAlignment:
           MainAxisAlignment.center,
          children: [
            Image.asset("lib/assets/image/leather-shoes-wooden-background_1203-7617.png")

          ],
        ),
      ),
    )
    );
    }

    
}