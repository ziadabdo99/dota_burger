import 'package:dota_burger/core/constants/app_colors.dart';
import 'package:dota_burger/shared/custom_button.dart';
import 'package:dota_burger/shared/custom_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart' show Gap;

class CartItem extends StatelessWidget {
  const CartItem({
    super.key,
    required this.image,
    required this.text,
    required this.desc,
    this.onAdd,
    this.onMinus,
    this.onRemove,
    this.numberOfItems,
  });
  final String image, text, desc;
  final Function()? onAdd;
  final Function()? onMinus;
  final Function()? onRemove;
  final int? numberOfItems ;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,

          children: [
            Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset(
                    image,
                    width: 150,
                    height: 150,
                    fit: BoxFit.cover,
                  ),
                ),

                Gap(10),
                CustomText(
                  text: text,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
                CustomText(text: desc, fontSize: 14),
              ],
            ),
            Column(
              children: [
                Row(
                  children: [
                    GestureDetector(
                      onTap: onAdd,
                      child: CircleAvatar(
                        radius: 15,
                        backgroundColor: AppColors.secondaryColor,
                        child: Icon(
                          CupertinoIcons.add,
                          color: Colors.white,
                          size: 20,
                        ),
                      ),
                    ),
                    Gap(15),
                    CustomText(
                      text: "$numberOfItems",
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                    Gap(15),
                    GestureDetector(
                      onTap: onMinus,
                      child: CircleAvatar(
                        radius: 15,
                        backgroundColor: AppColors.secondaryColor,
                        child: Icon(
                          CupertinoIcons.minus,
                          color: Colors.white,
                          size: 20,
                        ),
                      ),
                    ),
                  ],
                ),
                Gap(20),
                CustomButton(
                  color: AppColors.accentColor,
                  borderRadius:BorderRadius.circular(10),
                  height: 40,
                  width: 100,
                  text: 'Remove',
                  fontSize: 15,
                  onTap: onRemove,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
