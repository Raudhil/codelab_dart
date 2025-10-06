import 'package:flutter/material.dart';
import '../widgets/product_card.dart';

class Item {
  final String name;
  final int price;
  final String imageUrl;
  final int stock;
  final double rating;

  Item({
    required this.name,
    required this.price,
    required this.imageUrl,
    required this.stock,
    required this.rating,
  });
}

class HomePage extends StatelessWidget {
  final List<Item> items = [
    Item(
      name: 'Apel',
      price: 5000,
      imageUrl:
          'https://plus.unsplash.com/premium_photo-1661322640130-f6a1e2c36653?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      stock: 100,
      rating: 4.5,
    ),
    Item(
      name: 'Pisang',
      price: 3000,
      imageUrl:
          'https://plus.unsplash.com/premium_photo-1724250081102-cab0e5cb314c?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      stock: 150,
      rating: 4.0,
    ),
    Item(
      name: 'Jeruk',
      price: 4000,
      imageUrl:
          'https://plus.unsplash.com/premium_photo-1675011288421-21c7add02738?q=80&w=687&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      stock: 80,
      rating: 4.8,
    ),
    // Add more items as needed
  ];

  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Shopping List'), elevation: 0),
      body: Column(
        children: [
          Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.all(16),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.7,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
              ),
              itemCount: items.length,
              itemBuilder: (context, index) {
                return ProductCard(
                  item: items[index],
                  onTap: () {
                    Navigator.pushNamed(
                      context,
                      '/item',
                      arguments: items[index],
                    );
                  },
                );
              },
            ),
          ),
          Container(
            padding: const EdgeInsets.all(16),
            color: Colors.blue,
            child: const Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Raudhil Firdaus Naufal',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text('2341720164', style: TextStyle(color: Colors.white)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
