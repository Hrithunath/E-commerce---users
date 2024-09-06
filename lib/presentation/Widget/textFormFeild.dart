import 'package:e_commerce_shoes/presentation/Widget/text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Textformfeildcustom extends StatelessWidget {
  final String label;
  final String? hintText;
  final TextInputType? KeyboardType;
  final TextEditingController? controller;
  IconData? prefixIcon;
   Textformfeildcustom({
    required this.label,
    required this.prefixIcon,
    this.hintText,
    this.KeyboardType,
    this.controller,
   });
    
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: KeyboardType,
      decoration: InputDecoration(
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Color.fromARGB(255, 235, 233, 233))
        ),
        hintText: hintText,
        labelText: label,
        labelStyle: const TextStyle(color: Color.fromARGB(255, 175, 165, 165)),
       prefixIcon: prefixIcon != null
            ? Padding(
                padding: const EdgeInsets.all(6.0),
                child: Icon(prefixIcon,color: const Color.fromARGB(255, 199, 199, 199),),
              )
            : null,
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(5),
          ),
        ),
        focusedBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(5)),
          borderSide: BorderSide(
            color: Color.fromARGB(255, 192, 42, 219),
            width: 1.0
          )

        ),
        ),
        
    );

   
  }
}