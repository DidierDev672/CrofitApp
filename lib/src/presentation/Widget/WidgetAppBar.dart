import 'package:comicsapp/src/presentation/StyledText.dart';
import 'package:flutter/material.dart';

class WidgetAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final bool showLeading;

  const WidgetAppBar({super.key, this.title = '', this.showLeading = true});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.blue.shade500,
      foregroundColor: Colors.white,
      elevation: 4.0,
      centerTitle: true,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(30),
              bottomRight: Radius.circular(30))),
      title: StyledText(
          text: title,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
      leading: showLeading
          ? IconButton(
              onPressed: () => Navigator.pop(context),
              icon: const Icon(Icons.arrow_back))
          : null,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
