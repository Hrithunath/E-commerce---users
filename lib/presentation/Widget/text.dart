import 'package:flutter/material.dart';

class TextCustom extends StatelessWidget {
  final String text;
  final double? fontSize;
  final FontWeight? fontWeight;
  final Color? color;
  final FontStyle? fontStyle;
  final double? letterSpacing;
  final double? wordSpacing;
  final double? height;
  final TextAlign? textAlign;
  final String? fontFamily;
  final VoidCallback? onTap;
  final IconData? prefixIcon;
  final IconData? suffixIcon;

  TextCustom({
    required this.text,
    this.fontSize,
    this.fontWeight,
    this.color,
    this.fontStyle,
    this.letterSpacing,
    this.wordSpacing,
    this.height,
    this.textAlign,
    this.fontFamily,
    this.onTap,
    this.prefixIcon,
    this.suffixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          // Show prefix icon if it's provided
          if (prefixIcon != null)
            Padding(
              padding: const EdgeInsets.only(right: 5.0), // Add some spacing
              child: Icon(
                prefixIcon,
                size: fontSize, // Optional: You can align size with fontSize
                color: color,   // Align icon color with text color
              ),
            ),
          Text(
            text,
            style: TextStyle(
              fontSize: fontSize,
              fontWeight: fontWeight,
              color: color,
              fontStyle: fontStyle,
              letterSpacing: letterSpacing,
              wordSpacing: wordSpacing,
              height: height,
              fontFamily: fontFamily,
            ),
            textAlign: textAlign,
          ),
          // Show suffix icon if it's provided
          if (suffixIcon != null)
            Padding(
              padding: const EdgeInsets.only(left: 5.0), // Add some spacing
              child: Icon(
                suffixIcon,
                size: fontSize,
                color: color,
              ),
            ),
        ],
      ),
    );
  }
}
