import 'package:flutter/material.dart';

class TitleSection extends StatelessWidget {
  const TitleSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'SONY WH-1000XM4',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: Colors.black, width: 1),
          ),
          child: Row(
            children: [
              Icon(
                Icons.star,
                color: const Color.fromARGB(255, 150, 139, 40),
                size: 20,
              ),
              SizedBox(width: 4),
              Text('4.9', style: TextStyle(fontSize: 16)),
            ],
          ),
        ),
      ],
    );
  }
}
