import 'package:flutter/material.dart';
import 'package:session_7/core/text_style.dart';
import 'package:session_7/widget/category_image.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({
    super.key,
    required this.img,
    required this.title,
  });
  final String img;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CategoryImage(img: img),
        Text(
          title,
          style: appStyle(fw: FontWeight.w500, size: 14, color: Colors.black),
        )
      ],
    );
  }
}
