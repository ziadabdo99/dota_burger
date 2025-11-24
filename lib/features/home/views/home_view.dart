import 'package:dota_burger/core/constants/app_colors.dart';
import 'package:dota_burger/shared/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

class HomeView extends StatefulWidget {
  HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  TextEditingController searchController = TextEditingController();

  List<String> categories = ["All", "Combos", "Sliders", "Classic"];

  int categoryIndex = 0;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children: [
              Gap(75),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
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
                    radius: 25,
                    backgroundImage: AssetImage('assets/images/profile.png'),
                  ),
                ],
              ),
              Gap(30),
              Material(
                borderRadius: BorderRadius.circular(15),
                elevation: 2,
                child: TextField(
                  controller: searchController,
                  cursorColor: Colors.black,
                  decoration: InputDecoration(
                    fillColor: Colors.red,
                    hintText: 'Search for burgers, fries, etc.',
                    prefixIcon: Icon(Icons.search),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(color: Colors.white),
                    ),
                  ),
                ),
              ),
              Gap(30),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(categories.length, (index) {
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          categoryIndex = index;
                        });
                      },
                      child: Container(
                        height: 40,
                        margin: EdgeInsets.only(right: 10),
                        padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                        decoration: BoxDecoration(
                          color: index ==  categoryIndex ?  AppColors.primaryColor : Colors.grey[300] ,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: CustomText(
                          text: categories[index],
                          fontWeight: index ==  categoryIndex ? FontWeight.bold : FontWeight.normal,
                          fontSize: 16,
                          color:  index ==  categoryIndex ? AppColors.secondaryColor : Colors.black,
                        ),
                      ),
                    );
                  }),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
