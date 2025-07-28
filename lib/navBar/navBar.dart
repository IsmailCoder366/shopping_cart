import 'package:flutter/material.dart';

class Navbar extends StatefulWidget {
  const Navbar({super.key});

  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
            itemCount: 20,
          itemBuilder: (context, index) {
            return ListTile(
              leading: Icon(Icons.home),
              title: Text('item'),
            );
          }),
    );
  }
}
