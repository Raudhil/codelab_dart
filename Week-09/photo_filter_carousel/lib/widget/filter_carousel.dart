import 'package:flutter/material.dart';
import 'dart:io';
import 'filter_item.dart';

@immutable
class PhotoFilterCarousel extends StatefulWidget {
  final String imagePath;

  const PhotoFilterCarousel({super.key, required this.imagePath});

  @override
  State<PhotoFilterCarousel> createState() => _PhotoFilterCarouselState();
}

class _PhotoFilterCarouselState extends State<PhotoFilterCarousel> {
  final _filters = [
    Colors.white,
    ...List.generate(
      Colors.primaries.length,
      (index) => Colors.primaries[(index * 4) % Colors.primaries.length],
    )
  ];

  final _filterColor = ValueNotifier<Color>(Colors.white);

  void _onFilterChanged(Color value) {
    _filterColor.value = value;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Positioned.fill(
            child: _buildPhotoWithFilter(),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 20,
            child: _buildFilterSelector(),
          ),
        ],
      ),
    );
  }

  Widget _buildPhotoWithFilter() {
    return ValueListenableBuilder(
      valueListenable: _filterColor,
      builder: (context, color, child) {
        return Image.file(
          File(widget.imagePath),
          color: color.withOpacity(0.4),
          colorBlendMode: BlendMode.color,
          fit: BoxFit.cover,
        );
      },
    );
  }

  Widget _buildFilterSelector() {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: _filters.length,
        itemBuilder: (context, index) {
          final color = _filters[index];
          return FilterItem(
            color: color,
            onFilterSelected: () => _onFilterChanged(color),
          );
        },
      ),
    );
  }
}
