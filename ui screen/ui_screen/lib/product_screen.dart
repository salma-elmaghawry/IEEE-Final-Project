import 'package:flutter/material.dart';
import 'package:ui_screen/widgets/add_to_card_section.dart';
import 'package:ui_screen/widgets/colors_section.dart';
import 'package:ui_screen/widgets/product_specifications_section.dart';
import 'package:ui_screen/widgets/title_section.dart';

class ProductPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.favorite_border, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Column(
                  children: [
                    Image.asset(
                      'assets/images/product.jpg',
                      height: 100,
                      width: 100,
                    ),
                    SizedBox(height: 8),
                    Image.asset(
                      'assets/images/product.jpg',
                      height: 100,
                      width: 100,
                    ),
                    SizedBox(height: 8),
                    Image.asset(
                      'assets/images/product.jpg',
                      height: 100,
                      width: 100,
                    ),
                    SizedBox(height: 8),
                    Image.asset(
                      'assets/images/product.jpg',
                      height: 100,
                      width: 100,
                    ),
                  ],
                ),
                SizedBox(width: 16),
                // Main headphone image
                Expanded(
                  child: Image.asset('assets/images/product.jpg', height: 200),
                ),
              ],
            ),
            SizedBox(height: 16),
            TitleSection(),
            SizedBox(height: 8),
            Text(
              'Wireless Over-ear Industry Leading Noise Canceling Headphones with Microphone',
              style: TextStyle(fontSize: 16, color: Colors.grey[600]),
            ),
            SizedBox(height: 20),
            ProductSpecificationsSection(),
            SizedBox(height: 20),
            ColorsSection(),
            SizedBox(height: 40),
            AddToCardSection(),
          ],
        ),
      ),
    );
  }
}
