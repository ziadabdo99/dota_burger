
import 'package:dota_burger/core/constants/app_colors.dart';
import 'package:dota_burger/shared/custom_text.dart';
import 'package:flutter/material.dart';

class FoodCategory extends StatefulWidget {
   FoodCategory({super.key, required this.categories, required this.categoryIndex});
  
  
  final int categoryIndex ;
  final List categories;

  @override
  State<FoodCategory> createState() => _FoodCategoryState();
}

class _FoodCategoryState extends State<FoodCategory> {

  late int categoryIndex ;
@override
void initState() {
    categoryIndex = widget.categoryIndex ;
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: List.generate(widget.categories.length, (index) {
                        return GestureDetector(
                          onTap: () {
                            setState(() {
                              categoryIndex = index;
                            });
                          },
                          child: Container(
                            height: 40,
                            margin: EdgeInsets.only(right: 10),
                            padding: EdgeInsets.symmetric(
                              horizontal: 25,
                              vertical: 10,
                            ),
                            decoration: BoxDecoration(
                              color: index == categoryIndex
                                  ? AppColors.primaryColor
                                  : Colors.grey[300],
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: CustomText(
                              text: widget.categories[index],
                              fontWeight: index == categoryIndex
                                  ? FontWeight.bold
                                  : FontWeight.normal,
                              fontSize: 16,
                              color: index == categoryIndex
                                  ? AppColors.secondaryColor
                                  : Colors.black,
                            ),
                          ),
                        );
                      }),
                    ),
                  );
  }
}