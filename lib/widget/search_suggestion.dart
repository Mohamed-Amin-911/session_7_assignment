import 'package:flutter/material.dart';
import 'package:session_7/core/size_config.dart';
import 'package:session_7/core/text_style.dart';

class SearchSuggestionWidget extends StatelessWidget {
  const SearchSuggestionWidget({
    super.key,
    required this.text,
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [
          const Icon(
            Icons.search,
            color: Color(0xffC4C5C4),
          ),
          SizedBox(width: 10 * Sizeconfig.horizontalBlock),
          Text(
            text,
            style: appStyle(fw: FontWeight.w500, size: 17, color: Colors.black),
          ),
          const Spacer(),
          const Icon(
            Icons.close_rounded,
            color: Colors.black,
          )
        ],
      ),
    );
  }
}
