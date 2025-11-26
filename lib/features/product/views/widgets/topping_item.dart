import 'package:dota_burger/shared/custom_text.dart';
import 'package:flutter/material.dart';

class ToppingItem extends StatelessWidget {
  const ToppingItem({super.key, required this.text, required this.imagePath});

  final String text ;
  final String imagePath ;
  @override
  Widget build(BuildContext context) {
    return Container(
    decoration: BoxDecoration(      color: Colors.brown,
      borderRadius: BorderRadius.circular(24),),
      height: 99,
      width: 99,
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 55,
    
            decoration: BoxDecoration(
              color: Colors.white,
    
              borderRadius: BorderRadius.circular(24),
            ),
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Material(
                elevation: 30,
                color: Colors.transparent,
                child: Image.asset(
                 
                  imagePath, fit: BoxFit.contain),
              ),
            ),
          ),
    
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomText( fontSize: 12, color: Colors.white, fontWeight: FontWeight.w600, text: text,),
                Spacer(),
                Icon(Icons.add_circle, color: Colors.red),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
