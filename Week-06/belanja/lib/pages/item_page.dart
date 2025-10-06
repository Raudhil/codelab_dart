import 'package:flutter/material.dart';
import 'home_page.dart';

class ItemPage extends StatelessWidget {
  const ItemPage({super.key});

  @override
  Widget build(BuildContext context) {
    final item = ModalRoute.of(context)!.settings.arguments as Item;

    return Scaffold(
      appBar: AppBar(title: const Text('Item Details'), elevation: 0),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Hero(
                    tag: 'product-${item.name}',
                    child: Image.network(
                      item.imageUrl,
                      height: 300,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          item.name,
                          style: const TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          'Rp ${item.price}',
                          style: const TextStyle(
                            fontSize: 20,
                            color: Colors.green,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 16),
                        Row(
                          children: [
                            const Icon(Icons.star, color: Colors.amber),
                            Text(' ${item.rating}'),
                          ],
                        ),
                        const SizedBox(height: 8),
                        Text('Stock: ${item.stock}'),
                      ],
                    ),
                  ),
                ],
              ),
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
