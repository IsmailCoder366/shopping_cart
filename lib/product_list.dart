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

    Image.network('https://images.unsplash.com/photo-1553279768-865429fa0078?q=80&w=774&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
    Image.network('https://images.unsplash.com/photo-1547514701-42782101795e?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8b3JhbmdlfGVufDB8fDB8fHww'),
    Image.network('https://plus.unsplash.com/premium_photo-1724249990837-f6dfcb7f3eaa?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8YXBwbGV8ZW58MHx8MHx8fDA%3D'),
    Image.network('https://images.unsplash.com/photo-1603833665858-e61d17a86224?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8N3x8YmFuYW5hfGVufDB8fDB8fHww'),
    Image.network('https://images.unsplash.com/photo-1637715924886-cbe4485f90b9?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8Z3JhcGVzfGVufDB8fDB8fHww')

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
          return Card(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      SizedBox(
                        height: 100,
                        width: 100,
                        child: CircleAvatar(
                          backgroundImage: productImage[index].image,
                        )
                      ),

                      SizedBox(width: 10),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [

                            Text(productName[index],
                              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),),
                            SizedBox(height: 5,),
                            Text(productUnit[index] + " " + r"$"  + productPrice[index].toString(),
                              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                            ),
                            SizedBox(height: 5,),
                            Align(
                              alignment: Alignment.centerRight,
                              child: Container(
                                height: 35,
                                  width: 100,
                                  decoration: BoxDecoration(
                                    color: Colors.green,
                                    borderRadius: BorderRadius.circular(10)
                                  ),

                                  child: Center(child: Text('Add to Cart', style: TextStyle(color: Colors.white),)),
                                ),
                            ),
                          ],


                        ),
                      ),


                    ],
                  ),
                ],
              ),
            ),
          );
        }
      ))]
      )
      );
  }
}


