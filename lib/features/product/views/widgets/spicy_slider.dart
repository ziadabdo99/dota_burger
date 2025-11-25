import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../../shared/custom_text.dart';

class SpicySlider extends StatelessWidget {
  const SpicySlider({
    super.key,
    required this.spicyValue,
    required this.onChanged,
  });
  final double spicyValue;
  final ValueChanged<double>? onChanged;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(height: 270, 'assets/images/burger.png'),
        Spacer(),
        Column(
          children: [
            CustomText(
              text:
                  "Customize Your Burger\n to Your Tastes. Ultimate\n Experience",
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
            Slider(
              min: 0,
              max: 1,
              value: spicyValue,
              onChanged: onChanged,
              activeColor: AppColors.secondaryColor,
            ),
            Row(
              children: [
                CustomText(text: "🥶", fontSize: 20),
                Gap(100),
                CustomText(text: "🌶", fontSize: 20),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
