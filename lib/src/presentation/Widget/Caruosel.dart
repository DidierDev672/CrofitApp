import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Carousel extends StatelessWidget {
  const Carousel({super.key});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
        items: [
          'https://images.pexels.com/photos/8809989/pexels-photo-8809989.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
          'https://images.pexels.com/photos/5750750/pexels-photo-5750750.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
          'https://images.pexels.com/photos/7675416/pexels-photo-7675416.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
          'https://images.pexels.com/photos/7676552/pexels-photo-7676552.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
          'https://images.pexels.com/photos/4164770/pexels-photo-4164770.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'
        ].map((i) {
          return Container(
            width: MediaQuery.of(context).size.width,
            margin: const EdgeInsets.symmetric(horizontal: 5),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(40)),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(50.0),
              child: Image.network(i),
            ),
          );
        }).toList(),
        options: CarouselOptions(height: 300));
  }
}
