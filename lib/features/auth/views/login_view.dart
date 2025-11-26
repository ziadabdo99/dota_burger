import 'package:dota_burger/core/constants/app_colors.dart';
import 'package:dota_burger/shared/custom_button.dart';
import 'package:dota_burger/shared/custom_text.dart';
import 'package:dota_burger/shared/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

class LoginView extends StatelessWidget {
   LoginView({super.key});
 
TextEditingController emailController = TextEditingController();
TextEditingController passwordController = TextEditingController();
final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        backgroundColor: AppColors.primaryColor,
        body: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  Gap(100),
                   SvgPicture.asset(
                    'assets/logo/logo.svg',
                    colorFilter: ColorFilter.mode(Colors.red, BlendMode.srcIn),
                  ),
                  Gap(20),
                 CustomText(text: 'welcome back, please login to your account', color: Colors.black, fontWeight: FontWeight.w400, fontSize: 16),
                    Gap(50),
                    CustomTextField(
                      controller: emailController,
                      hintText: 'Email',
                      isPassword: false,
              
                    ),
                    Gap(20),
                    CustomTextField(
                      controller: passwordController,
                      hintText: 'Password',
                      isPassword: true,
                    ), 
                    Gap(20),
                    CustomButton(onTap: () {
                      if (_formKey.currentState!.validate()) {
                      }
                      }, text: 'Login',
                      height: 50,
                      width: double.infinity,
                      ),
                  Spacer(),
                  Image.asset(
                    height: 150, 
                    'assets/splash/splash.png',
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}