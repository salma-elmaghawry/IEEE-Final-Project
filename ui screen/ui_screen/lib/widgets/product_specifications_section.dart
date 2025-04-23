import 'package:flutter/material.dart';

class ProductSpecificationsSection extends StatelessWidget {
  const ProductSpecificationsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: 30,
          height: 30,
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.all(Radius.circular(5)),
            border: Border.all(color: Colors.grey, width: 1),
          ),

          child: Icon(Icons.description, size: 25),
        ),
        SizedBox(width: 15),
        Text(
          'Product Specifications',
          style: TextStyle(fontSize: 16, color: Colors.black),
        ),
        Spacer(),
        Icon(Icons.arrow_forward_ios, size: 25, color: Colors.grey),
      ],
    );
  }
}
