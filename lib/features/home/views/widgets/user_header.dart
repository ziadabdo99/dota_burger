import 'package:dota_burger/core/constants/app_colors.dart';
import 'package:dota_burger/shared/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

class UserHeader extends StatelessWidget {
  const UserHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
                        children: [
                          Column(
     crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisAlignment: MainAxisAlignment.center,
     children: [
       SvgPicture.asset(
         height: 30,
         'assets/logo/logo.svg',
         colorFilter: ColorFilter.mode(
           AppColors.secondaryColor,
           BlendMode.srcIn,
         ),
       ),
       Gap(5),
       CustomText(
         text: 'Welcome,',
         color: const Color.fromARGB(255, 97, 94, 94),
         fontWeight: FontWeight.w500,
         fontSize: 20,
       ),
     ],
                          ),
                          Spacer(),
                          CircleAvatar(
     radius: 35,
     backgroundImage: AssetImage('assets/images/profile.png'),
                          ),
                        ],
                      );
  }
}
