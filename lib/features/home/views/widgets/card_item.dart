import 'package:dota_burger/shared/custom_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CardItem extends StatelessWidget {
  const CardItem({
    super.key, required this.image, required this.text, required this.desc, required this.rate,
  });
 

 final String image , text, desc,rate;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 15,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
            CustomText(text: text, fontSize: 20, fontWeight: FontWeight.bold,),
            CustomText(text: desc, fontSize: 15),
            Row(
              children: [
                CustomText(text: "⭐ $rate", fontSize: 20),
                const Spacer(),
             Icon(CupertinoIcons.heart_fill, color: Colors.red,)
              ],
            ),
          ],
        ),
      ),
    );
  }
}
