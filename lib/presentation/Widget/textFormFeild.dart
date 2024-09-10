import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Textformfeildcustom extends StatelessWidget {
  final String label;
  final String? hintText;
  final TextInputType? keyboardType;
  final TextEditingController? controller;
  IconData? prefixIcon;
   IconData? sufixIcon;
  
   Textformfeildcustom({
    required this.label,
     this.prefixIcon,
     
    this.hintText,
    this.keyboardType,
    this.controller,
   });
    
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: keyboardType,
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