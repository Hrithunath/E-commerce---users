import 'package:e_commerce_shoes/presentation/Widget/text.dart';
import 'package:e_commerce_shoes/presentation/bloc/auth_bloc.dart';
import 'package:e_commerce_shoes/presentation/bloc/auth_bloc.dart';
import 'package:e_commerce_shoes/presentation/bloc/auth_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeWrapper extends StatelessWidget {
  const HomeWrapper({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(create: (context)=>AuthBloc(),
    child: Home(),);
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: (){
            final AuthBoc = BlocProvider.of<AuthBloc>(context);
            AuthBoc.add(LogoutEvent());
            Navigator.pushNamedAndRemoveUntil(context, "/Login", (route)=>false);
          }, icon: const Icon(Icons.logout))
        ],
      ),
      body:const SafeArea(child: 
      Center(child: TextCustom(text: "hai"),
      )) ,
    );
  }
}