import 'package:flutter/material.dart';

class ImageBanner extends StatelessWidget {
  final String assetPath;
  final double height;
  const ImageBanner({super.key, required this.assetPath, this.height = 200.0});

  @override
  Widget build(BuildContext context) {
    return Container(
        constraints: BoxConstraints.expand(
          height: height,
        ),
        decoration: const BoxDecoration(color: Colors.grey),
        child: Image.asset(
          assetPath,
          fit: BoxFit.cover,
        ));
  }
}
