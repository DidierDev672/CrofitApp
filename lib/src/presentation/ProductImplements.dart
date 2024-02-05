import 'package:flutter/material.dart';
import '../domain/entities/Product.dart';
import './StyledText.dart';

// ignore: must_be_immutable
class ProductImplements extends StatelessWidget {
  final String seletedType;
  const ProductImplements({super.key, required this.seletedType});

  @override
  Widget build(BuildContext context) {
    final products = [
      Product(
          id: 1,
          name: "Treadmill",
          kilograms: 150,
          photo:
              "https://m.media-amazon.com/images/I/51H61SeYDkL._AC_SX679_.jpg",
          type: "Cardio equipment"),
      Product(
          id: 2,
          name: "Dumbbells",
          kilograms: 10,
          photo:
              "https://m.media-amazon.com/images/I/71+KDPrgeDL._AC_SY300_SX300_.jpg",
          type: "Disc machine"),
      Product(
          id: 3,
          name: "Exercise Bike",
          kilograms: 100,
          photo:
              "https://m.media-amazon.com/images/I/61SF0QYviXL._AC_SX679_.jpg",
          type: "Cardio equipment"),
      Product(
          id: 4,
          name: "Bench Press",
          kilograms: 50,
          photo:
              "https://m.media-amazon.com/images/I/616SwiQeqyL._AC_SX679_.jpg",
          type: "Banks"),
      Product(
          id: 5,
          name: "Rowing Machines",
          kilograms: 80,
          photo:
              "https://m.media-amazon.com/images/I/61Qjhu7cMFL._AC_SX679_.jpg",
          type: "Cardio equipment"),
      Product(
          id: 6,
          name: "Barbell",
          kilograms: 20,
          photo:
              "https://m.media-amazon.com/images/I/61IyGJk9cRL._AC_SX679_.jpg",
          type: "Disc machines"),
      Product(
          id: 7,
          name: "Elliptical",
          kilograms: 120,
          photo:
              "https://m.media-amazon.com/images/I/71Mv1B6feEL.__AC_SX300_SY300_QL70_FMwebp_.jpg",
          type: "Cardio equipment"),
      Product(
          id: 8,
          name: "Kettlebell",
          kilograms: 15,
          photo:
              "https://m.media-amazon.com/images/I/71Y300FtX1L.__AC_SX300_SY300_QL70_FMwebp_.jpg",
          type: "Disc machines"),
      Product(
          id: 9,
          name: "Stair Stepper",
          kilograms: 90,
          photo:
              "https://m.media-amazon.com/images/I/61vNQX1dyML.__AC_SX300_SY300_QL70_FMwebp_.jpg",
          type: "Cardio equipment"),
      Product(
          id: 10,
          name: "Weight Machine",
          kilograms: 200,
          photo:
              "https://m.media-amazon.com/images/I/617s2GsuxkL.__AC_SX300_SY300_QL70_FMwebp_.jpg",
          type: "Disc machines"),
      Product(
          id: 10,
          name: 'Leg Extension',
          kilograms: 80,
          photo:
              'https://m.media-amazon.com/images/I/51yUu1pVigL.__AC_SX300_SY300_QL70_FMwebp_.jpg',
          type: "Disc machines"),
      Product(
          id: 11,
          name: 'Yoga Mat',
          kilograms: 1,
          photo:
              'https://m.media-amazon.com/images/I/71DV8cxxO3L.__AC_SX300_SY300_QL70_FMwebp_.jpg',
          type: 'Elastic'),
      Product(
          id: 12,
          name: 'Stationary Bike',
          kilograms: 100,
          photo:
              'https://m.media-amazon.com/images/I/61-A7rKEH5L.__AC_SX300_SY300_QL70_FMwebp_.jpg',
          type: 'Cardio equipment'),
      Product(
          id: 13,
          name: 'Bench Press',
          kilograms: 100,
          photo:
              'https://m.media-amazon.com/images/I/71MFJVSfUtL.__AC_SX300_SY300_QL70_FMwebp_.jpg',
          type: 'Benches'),
      Product(
          id: 14,
          name: 'Leg Press',
          kilograms: 200,
          photo:
              'https://m.media-amazon.com/images/I/71dhFYn1ESL.__AC_SX300_SY300_QL70_FMwebp_.jpg',
          type: 'Disc machines'),
      Product(
          id: 15,
          name: 'Resistance Bands',
          kilograms: 05,
          photo:
              'https://m.media-amazon.com/images/I/71wwR5zim1L.__AC_SX300_SY300_QL70_FMwebp_.jpg',
          type: 'Elastic')
    ];

    List<Product> filterProduct(List<Product> products, String type) {
      return products.where((product) => product.type == type).toList();
    }

    final filProduct = filterProduct(products, seletedType);
    return GridView.builder(
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemCount: filProduct.length,
        itemBuilder: (context, index) {
          return ProductCard(product: products[index]);
        });
  }
}

class ProductCard extends StatelessWidget {
  final Product product;

  const ProductCard({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 8.5,
      child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 100,
                height: 100,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(50)),
                child: Image.network(product.photo),
              ),
              StyledText(
                  text: product.name,
                  style: const TextStyle(
                      fontSize: 16, fontWeight: FontWeight.w600)),
              StyledText(
                text: '${product.kilograms}',
                style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Color.fromARGB(100, 100, 100, 100)),
              )
            ],
          )),
    );
  }
}
