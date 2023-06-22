import 'package:flutter/material.dart';

class ImageBase extends StatelessWidget {
  const ImageBase({required this.imagePath, super.key});
  final String imagePath;
  @override
  Widget build(BuildContext context) {
    return Image.asset(imagePath, fit: BoxFit.fitWidth);
  }
}
