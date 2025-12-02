import 'package:dota_burger/features/cart/views/widgets/cart_item.dart';
import 'package:dota_burger/shared/custom_button.dart';
import 'package:dota_burger/shared/custom_text.dart';
import 'package:flutter/material.dart';

class CartView extends StatefulWidget {
  const CartView({super.key});

  @override
  State<CartView> createState() => _CartViewState();
}

class _CartViewState extends State<CartView> {
  int numberOfItems = 0;
  void increment() {
    setState(() {
      numberOfItems++;
    });
  }

  void decrement() {
    setState(() {
      if (numberOfItems > 1) {
        numberOfItems--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        toolbarHeight: 0,
        backgroundColor: Colors.white,
        scrolledUnderElevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: ListView.builder(
          padding: EdgeInsets.only( bottom: 120),
          itemCount: 10,
          itemBuilder: (context, index) => CartItem(
            image: 'assets/test/t1.png',
            text: 'Classic Burger',
            desc: 'With cheese, lettuce, tomato',
            numberOfItems: numberOfItems,
            onAdd: increment,
            onMinus: decrement,
            onRemove: () {},
          ),
        ),
      ),
      
      bottomSheet: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
          boxShadow: const [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 10,
            ),
          ]
        ),
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
