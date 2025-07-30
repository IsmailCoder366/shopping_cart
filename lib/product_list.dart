import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;

class ProductList extends StatefulWidget {
  const ProductList({super.key});

  @override
  State<ProductList> createState() => _ProductListState();
}

class _ProductListState extends State<ProductList> {

  List<String> productName = ['Mango', 'Orange', 'Apple', 'Banana', 'Grapes'];

  List<String> productUnit = ['kg', 'Dozen', 'kg', 'Dozen', 'kg'];

  List<int> productPrice = [100, 200, 300, 400, 500];

  List<Image> productImage = [
    Image.network('data:image/jpeg;base64,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'),
    Image.network('https://images.unsplash.com/photo-1553279768-865429fa0078?q=80&w=774&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
    Image.network('https://images.unsplash.com/photo-1553279768-865429fa0078?q=80&w=774&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
    Image.network('https://images.unsplash.com/photo-1553279768-865429fa0078?q=80&w=774&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
    Image.network('https://images.unsplash.com/photo-1553279768-865429fa0078?q=80&w=774&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),


  ];

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

      body: Column(
        children: [
          Expanded(

                child: ListView.builder(

              itemCount: productName.length,
              itemBuilder: (context, index) {
                return  ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(productImage[index].image.toString()),
                  ),
                  title: Text(productName[index]),
                  subtitle: Text(productUnit[index] + ' - ' + productPrice[index].toString() + ' Rs'),
                );
              }))

        ],
      )
      );
  }
}


