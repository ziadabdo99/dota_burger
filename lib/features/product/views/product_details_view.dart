import 'package:dota_burger/features/product/views/widgets/spicy_slider.dart';
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
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Column(
          children: [
            SpicySlider(
              spicyValue: spicyValue,
              onChanged: (value) {
                setState(() {
                  spicyValue = value;
                });
                 Gap(20);
                 CustomText(text: "Toppings", fontSize: 19, fontWeight: FontWeight.bold,);

              },
            ),
          ],
        ),
      ),
    );
  }
}
