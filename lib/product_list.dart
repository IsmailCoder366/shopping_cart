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
    Image.network('https://media.istockphoto.com/id/1019835828/photo/mango-and-leaf-isolated-white-background.jpg?s=612x612&w=0&k=20&c=_nmOBzO9mGEitT2rUvO1xAX9jwL5mHYI8AFRbYeyy-A='),
    Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSm-IP0vGHOYDQUqEokK1k-j5GGBh9Af-XWDw&s'),
    Image.network('https://media.istockphoto.com/id/184276818/photo/red-apple.jpg?s=612x612&w=0&k=20&c=NvO-bLsG0DJ_7Ii8SSVoKLurzjmV0Qi4eGfn6nW3l5w='),
    Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRZdYAUXvlwNIrC2A_4oIhFUyBtKtLNHm0buQ&s'),
    Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS8UtrpPyYy_9wEWxUEybi3stLiEg3sSEfgiQ&s'),

  ];

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

      body: Column(
        children: [
          Expanded(

                child: ListView.builder(

              itemCount: productName.length,
              itemBuilder: (context, index) {
                return Card(
                  child: Column(
                    children: [
                      Row(
                        children: [
                            Image(
                                height : 100,
                                width: 100,
                                image: NetworkImage(productImage[index].toString())),

                        ],
                      )
                    ],
                  ),
                );
              }))

        ],
      )
      );
  }
}
