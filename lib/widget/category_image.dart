import 'package:flutter/material.dart';
import 'package:session_7/core/size_config.dart';

class CategoryImage extends StatelessWidget {
  const CategoryImage({
    super.key,
    required this.img,
  });
  final String img;

  @override
  Widget build(BuildContext context) {
    return Image(
        image: AssetImage(img),
        fit: BoxFit.cover,
        width: 48 * Sizeconfig.horizontalBlock,
        height: 48 * Sizeconfig.verticalBlock);
  }
}
