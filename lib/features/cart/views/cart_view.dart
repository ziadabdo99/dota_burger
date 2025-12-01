import 'package:dota_burger/features/cart/views/widgets/cart_item.dart';
import 'package:dota_burger/shared/custom_button.dart';
import 'package:dota_burger/shared/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class CartView extends StatelessWidget {
  const CartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: ListView.builder(
          padding: EdgeInsets.only(top: 30, bottom: 120),
          itemCount: 10,
          itemBuilder: (context, index) => CartItem(
            image: 'assets/test/t1.png',
            text: 'Classic Burger',
            desc: 'With cheese, lettuce, tomato',
            numberOfItems: 1,
            onAdd: () {},
            onMinus: () {},
            onRemove: () {},
          ),
        ),
      ),

      bottomSheet: Container(
        color: Colors.white,
        padding: EdgeInsets.all(15),
        height: 100,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
            CustomButton(
              width: 120,
              height: 50,
              text: " Checkout",
              fontSize: 17,
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
