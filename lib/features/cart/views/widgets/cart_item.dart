
import 'package:dota_burger/core/constants/app_colors.dart';
import 'package:dota_burger/shared/custom_button.dart';
import 'package:dota_burger/shared/custom_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart' show Gap;

class CartItem extends StatelessWidget {
  const CartItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    
          children: [
            Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset(
                    "assets/test/t1.png",
                    width: 150,
                    height: 150,
                    fit: BoxFit.cover,
                  ),
                ),
    
                Gap(10),
                CustomText(
                  text: "Burger",
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
                CustomText(text: "Burger", fontSize: 14),
              ],
            ),
            Column(
              children: [
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                      },
                      child: CircleAvatar(
                        backgroundColor: AppColors.secondaryColor, 
                        child: Icon(
                          CupertinoIcons.add,
                          color: Colors.white,
                          size: 30,
                        ),
                      ),
                    ),
                    Gap(30),
                    CustomText(
                      text: "1",
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                    Gap(30),
                     GestureDetector(
                      onTap: () {},
                       child: CircleAvatar(
                        backgroundColor: AppColors.secondaryColor, 
                        child: Icon(
                          CupertinoIcons.minus,
                          color: Colors.white,
                          size: 30,
                        ),
                                                   ),
                     ),
                  ],
                ),
                Gap(20),
                CustomButton(
                  height: 40,
                  width: 150,
                  text: 'Remove',
                  onTap: () {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
