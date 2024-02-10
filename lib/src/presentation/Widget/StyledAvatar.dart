import 'package:flutter/material.dart';
import '../StyledText.dart';

class StyledAvatar extends StatelessWidget {
  final String? imageUrl;
  final String? initials;
  final double? radius;

  const StyledAvatar({super.key, this.imageUrl, this.initials, this.radius});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: radius,
      backgroundImage: imageUrl != null ? NetworkImage(imageUrl!) : null,
      child: imageUrl == null
          ? StyledText(text: initials!, style: const TextStyle())
          : null,
    );
  }
}
