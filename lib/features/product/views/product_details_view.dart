import 'package:dota_burger/features/product/views/widgets/spicy_slider.dart';
import 'package:dota_burger/features/product/views/widgets/topping_item.dart';
import 'package:dota_burger/shared/custom_button.dart';
import 'package:dota_burger/shared/custom_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ProductDetailsView extends StatefulWidget {
  const ProductDetailsView({super.key});

  @override
  State<ProductDetailsView> createState() => _ProductDetailsViewState();
}

class _ProductDetailsViewState extends State<ProductDetailsView> {
  double spicyValue = 0.5;
  List<String> toppingNames = ["Tomato", "Onion", "Pickles", "Bacons"];
  List<String> toppingImagePaths = [
    "assets/test/tomato.png",
    "assets/test/Onions.png",
    "assets/test/Pickles.png",
    "assets/test/Bacons.png",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(CupertinoIcons.back, color: Colors.black),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SpicySlider(
                spicyValue: spicyValue,
                onChanged: (value) {
                  setState(() {
                    spicyValue = value;
                  });
                },
              ),

              Gap(20),
              CustomText(
                text: "Toppings",
                fontSize: 19,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
              Gap(20),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(
                    toppingNames.length,
                    (index) => Padding(
                      padding: const EdgeInsets.only(right: 15.0),
                      child: ToppingItem(
                        text: toppingNames[index],
                        imagePath: toppingImagePaths[index],
                      ),
                    ),
                  ),
                ),
              ),
              Gap(20),
              CustomText(
                text: "Sides",
                fontSize: 19,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
              Gap(20),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(
                    toppingNames.length,
                    (index) => Padding(
                      padding: const EdgeInsets.only(right: 15.0),
                      child: ToppingItem(
                        text: toppingNames[index],
                        imagePath: toppingImagePaths[index],
                      ),
                    ),
                  ),
                ),
              ),

              Gap(120),
              Padding(
                padding: const EdgeInsets.only(bottom: 30.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomText(
                          text: "Total",
                          fontSize: 16,
                          color: const Color.fromARGB(255, 102, 99, 99),
                        ),
                        CustomText(
                          text: "\$12.00",
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ],
                    ),
                    Spacer(),
                    CustomButton(
                      text: " Add to Cart",
                      onTap: (){},
                     
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
