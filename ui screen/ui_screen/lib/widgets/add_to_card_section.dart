import 'package:flutter/material.dart';

class AddToCardSection extends StatelessWidget {
  const AddToCardSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          '\$349.99',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        ElevatedButton(
          onPressed: () {
            showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  backgroundColor: Colors.white,

                  title: Text('Added to Cart'),
                  content: Text('The product has been added to your cart.'),
                  actions: [
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: Text('OK'),
                    ),
                  ],
                );
              },
            );
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.redAccent,
            padding: EdgeInsets.symmetric(horizontal: 40, vertical: 12),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          child: Row(
            children: [
              Text(
                'Add To Card ',
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
              Icon(Icons.arrow_forward_ios, size: 20, color: Colors.white),
            ],
          ),
        ),
      ],
    );
  }
}
