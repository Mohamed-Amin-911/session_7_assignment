import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:session_7/core/text_style.dart';
import 'package:session_7/data_model/Reviews_class.dart';

class ReviewWidget extends StatelessWidget {
  const ReviewWidget({super.key, required this.review});
  final Review review;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image(image: AssetImage(review.img)),
          SizedBox(width: 5),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                review.name,
                style: appStyle(
                    fw: FontWeight.w500, size: 14, color: Colors.black),
              ),
              RatingBar.builder(
                initialRating: review.rate,
                minRating: review.rate,
                direction: Axis.horizontal,
                allowHalfRating: true,
                ignoreGestures: true,
                itemCount: 5,
                itemSize: 18,
                itemPadding: const EdgeInsets.symmetric(horizontal: 0.0),
                itemBuilder: (context, _) => const Icon(
                  Icons.star,
                  color: Colors.amber,
                ),
                onRatingUpdate: (rating) {
                  print(rating);
                },
              ),
              SizedBox(
                height: 70,
                width: 300,
                child: Text(review.review,
                    // maxLines: 4,
                    style: appStyle(
                        fw: FontWeight.w400, size: 12, color: Colors.black)),
              )
            ],
          )
        ],
      ),
    );
  }
}
