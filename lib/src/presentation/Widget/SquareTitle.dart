import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SquareTitle extends StatelessWidget {
  final FaIcon iconPath;

  const SquareTitle({super.key, required this.iconPath});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: FaIcon(iconPath.icon),
    );
  }
}
