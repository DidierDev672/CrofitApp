import '../../domain/entities/product.dart';
import 'package:flutter/material.dart';

class ProductCards extends StatelessWidget {
  final Product product;

  const ProductCards({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _ImageViewer(
          images: product.images,
        ),
        Text(product.title,
            textAlign: TextAlign.center,
            style:
                const TextStyle(fontSize: 16.0, fontWeight: FontWeight.w400)),
        const SizedBox(height: 20)
      ],
    );
  }
}

class _ImageViewer extends StatelessWidget {
  final List<String> images;
  const _ImageViewer({required this.images});

  @override
  Widget build(BuildContext context) {
    if (images.isEmpty) {
      return ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Image.asset(
          'assets/images/online-shopping-monochromatic.png',
          fit: BoxFit.cover,
          height: 250,
        ),
      );
    }

    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: FadeInImage(
          fit: BoxFit.cover,
          height: 250,
          fadeOutDuration: const Duration(milliseconds: 100),
          fadeInDuration: const Duration(milliseconds: 200),
          placeholder: const AssetImage('assets/loaders/bottle-loader.gif'),
          image: NetworkImage(images.first)),
    );
  }
}
