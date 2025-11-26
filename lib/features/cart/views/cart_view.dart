import 'package:dota_burger/core/constants/app_colors.dart';
import 'package:dota_burger/features/cart/views/widgets/cart_item.dart';
import 'package:dota_burger/shared/custom_button.dart';
import 'package:dota_burger/shared/custom_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class CartView extends StatelessWidget {
  const CartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Column(
          children: [
            Gap(50),
            CartItem(),
          ],
        ),
      ),
    );
  }
}

