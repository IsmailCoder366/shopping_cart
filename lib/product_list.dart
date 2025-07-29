import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;

class ProductList extends StatefulWidget {
  const ProductList({super.key});

  @override
  State<ProductList> createState() => _ProductListState();
}

class _ProductListState extends State<ProductList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shopping Cart'),
        centerTitle: true,
        actions: [
          badges.Badge(

            badgeContent: const Text(
              '0',
              style: TextStyle(color: Colors.white),
            ),
            badgeAnimation: badges.BadgeAnimation.scale(
              animationDuration: const Duration(milliseconds: 300),
              curve: Curves.fastOutSlowIn,
            ),
            child: IconButton(
              icon: const Icon(Icons.shopping_cart),
              onPressed: () {
                // Handle cart button press

              },
            ),
          ),
          SizedBox(width: 20,)
        ],
      ),
    );
  }
}
