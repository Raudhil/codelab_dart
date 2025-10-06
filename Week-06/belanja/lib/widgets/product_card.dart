import 'package:flutter/material.dart';
import '../pages/home_page.dart';

class ProductCard extends StatelessWidget {
  final Item item;
  final Function() onTap;

  const ProductCard({super.key, required this.item, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Card(
        elevation: 2.0,
        clipBehavior: Clip.antiAlias,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Hero(
              tag: 'product-${item.name}',
              child: Image.network(
                item.imageUrl,
                height: 140,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    item.name,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    'Rp ${item.price}',
                    style: const TextStyle(
                      fontSize: 14,
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Row(
                    children: [
                      const Icon(Icons.star, size: 16, color: Colors.amber),
                      Text(' ${item.rating}'),
                      const Spacer(),
                      Text('Stok: ${item.stock}'),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
