import 'package:dota_burger/shared/custom_text.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  CustomButton({
    super.key,
    required this.text,
    required this.onTap,
    this.height,
    this.width,
    this.color,
    this.borderRadius,
  });

  final String text;
  final void Function()? onTap;
  final double? height;
  final double? width;
  final Color? color;
  final BorderRadiusGeometry? borderRadius;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width ?? 200,
        height: height ?? 70,
        decoration: BoxDecoration(
          color: color ?? Colors.brown,
          borderRadius: borderRadius ?? BorderRadius.circular(16),
        ),
        child: Center(
          child: CustomText(
            text: text,
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
