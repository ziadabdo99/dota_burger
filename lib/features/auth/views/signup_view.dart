import 'package:dota_burger/core/constants/app_colors.dart';
import 'package:dota_burger/shared/custom_button.dart';
import 'package:dota_burger/shared/custom_text.dart';
import 'package:dota_burger/shared/custom_text_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

class SignupView extends StatelessWidget {
  SignupView({super.key});
  final _formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  TextEditingController phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        backgroundColor: AppColors.primaryColor,
        body: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  Gap(100),
                  SvgPicture.asset(
                    'assets/logo/logo.svg',
                    colorFilter: ColorFilter.mode(Colors.red, BlendMode.srcIn),
                  ),
                  Gap(10),
                  CustomText(
                    text: 'Create your account',
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                    fontSize: 20,
                  ),
                  Gap(70),
                  CustomTextField(
                    controller: nameController,
                    hintText: 'Name', isPassword: false),
                  Gap(20),
                  CustomTextField(
                    controller: emailController,
                    hintText: 'Email', isPassword: false),
                                        Gap(20),

                    CustomTextField(
                    controller: phoneController,
                    hintText: 'Phone', isPassword: false),
                  Gap(20),
                  CustomTextField(
                    controller: passwordController,
                    hintText: 'Password', isPassword: true),
                    Gap(20),
                  
                  CustomTextField(
                    controller: confirmPasswordController,
                    hintText: 'Confirm Password', isPassword: true),
                  Gap(35),
                      CustomButton(onTap: () {
                      if (_formKey.currentState!.validate()) {
                      }
                      }, text: 'Sign Up'),
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

