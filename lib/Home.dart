import 'package:e_commerce_shoes/Widget/text.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body:SafeArea(child: 
      Column(
        children: [
          TextCustom(text: "hai"),
        ],
      )) ,
    );
  }
}