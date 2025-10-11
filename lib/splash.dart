
import 'package:dota_burger/core/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      backgroundColor: AppColors.primaryColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Gap(300),
            SvgPicture.asset(
              'assets/logo/logo.svg',
              colorFilter: ColorFilter.mode(Colors.red, BlendMode.srcIn),
            ),
            
            Spacer(),
            Image.asset(
              height: 150, 
              'assets/splash/splash.png',
            ),
          ],
        ),
      )
    );
  }
}