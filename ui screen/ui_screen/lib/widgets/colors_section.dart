import 'package:flutter/material.dart';

class ColorsSection extends StatelessWidget {
  const ColorsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
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

        Text('Colors', style: TextStyle(fontSize: 16, color: Colors.black)),
        SizedBox(width: 200),

        Container(
          width: 20,
          height: 20,
          decoration: BoxDecoration(
            color: Colors.brown,
            shape: BoxShape.circle,
          ),
        ),
        SizedBox(width: 8),
        Container(
          width: 20,
          height: 20,
          decoration: BoxDecoration(
            color: Colors.green,
            shape: BoxShape.circle,
          ),
        ),
        SizedBox(width: 8),
        Container(
          width: 20,
          height: 20,
          decoration: BoxDecoration(color: Colors.grey, shape: BoxShape.circle),
        ),
      ],
    );
  }
}
