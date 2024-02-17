import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:session_7/core/size_config.dart';
import 'package:session_7/core/text_style.dart';
import 'package:session_7/data_model/Reviews_class.dart';
import 'package:session_7/data_model/product_class.dart';
import 'package:session_7/widget/review.dart';
import 'package:badges/badges.dart' as badges;

class ProductScreen extends StatefulWidget {
  const ProductScreen({super.key, required this.product});
  final Productt product;

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  bool isAdded = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 50 * Sizeconfig.verticalBlock),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(
                        Icons.arrow_back_ios_new_rounded,
                        color: Colors.black,
                      )),
                  Text(
                    "Detail Product",
                    style: appStyle(
                        fw: FontWeight.w700, size: 16, color: Colors.black),
                  ),
                  Row(
                    children: [
                      SvgPicture.asset("assets/icn8.svg"),
                      SizedBox(width: 20 * Sizeconfig.horizontalBlock),
                      isAdded
                          ? badges.Badge(
                              position:
                                  badges.BadgePosition.custom(top: -3, end: -2),
                              child: SvgPicture.asset("assets/icn2.svg"),
                            )
                          : SvgPicture.asset("assets/icn2.svg"),
                      SizedBox(
                        width: 5,
                      )
                    ],
                  )
                ],
              ),
              SizedBox(height: 20 * Sizeconfig.verticalBlock),
              Center(
                child: Image(
                  image: AssetImage(widget.product.img),
                  width: 232 * Sizeconfig.horizontalBlock,
                  height: 236 * Sizeconfig.verticalBlock,
                ),
              ),
              SizedBox(height: 30 * Sizeconfig.verticalBlock),
              Text(
                widget.product.title,
                style: appStyle(
                    fw: FontWeight.w700, size: 17, color: Colors.black),
              ),
              SizedBox(height: 20 * Sizeconfig.verticalBlock),
              Text(
                "EGP ${widget.product.price.toString()}",
                style: appStyle(
                    fw: FontWeight.w700,
                    size: 17,
                    color: const Color(0xffFE3A30)),
              ),
              SizedBox(height: 20 * Sizeconfig.verticalBlock),
              Row(
                children: [
                  const Icon(
                    Icons.star_rate_rounded,
                    color: Color(0xffFFC120),
                    size: 18,
                  ),
                  SizedBox(width: 2 * Sizeconfig.horizontalBlock),
                  Text(
                    widget.product.rating.toString(),
                    style: appStyle(
                        fw: FontWeight.w600, size: 13, color: Colors.black),
                  ),
                  SizedBox(width: 20 * Sizeconfig.horizontalBlock),
                  Text(
                    "${reviews.length} Reviews",
                    style: appStyle(
                        fw: FontWeight.w600, size: 13, color: Colors.black),
                  ),
                ],
              ),
              SizedBox(height: 30 * Sizeconfig.verticalBlock),
              Row(
                children: [
                  const Image(
                    image: AssetImage("assets/img7.png"),
                    width: 45,
                    height: 45,
                  ),
                  SizedBox(width: 10 * Sizeconfig.horizontalBlock),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "BUMDES Desa Sidosari",
                        style: appStyle(
                            fw: FontWeight.w500, size: 14, color: Colors.black),
                      ),
                      SizedBox(height: 5 * Sizeconfig.verticalBlock),
                      Row(
                        children: [
                          Text(
                            "Verified  ",
                            style: appStyle(
                                fw: FontWeight.w400,
                                size: 12,
                                color: Colors.black),
                          ),
                          const Image(
                            image: AssetImage("assets/Shield Done.png"),
                            width: 14.17,
                          )
                        ],
                      )
                    ],
                  ),
                  const Spacer(),
                  const Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: Color(0xff838589),
                  )
                ],
              ),
              SizedBox(height: 30 * Sizeconfig.verticalBlock),
              Text(
                "Description Product",
                style: appStyle(
                    fw: FontWeight.w700, size: 16, color: Colors.black),
              ),
              SizedBox(height: 10 * Sizeconfig.verticalBlock),
              Text(
                widget.product.description,
                style: appStyle(
                    fw: FontWeight.w400, size: 14, color: Colors.black),
              ),
              SizedBox(height: 30 * Sizeconfig.verticalBlock),
              Row(
                children: [
                  Text(
                    "All Reviews (${reviews.length})",
                    style: appStyle(
                        fw: FontWeight.w700, size: 16, color: Colors.black),
                  ),
                  const Spacer(),
                  Row(
                    children: [
                      const Icon(
                        Icons.star_rate_rounded,
                        color: Color(0xffFFC120),
                        size: 18,
                      ),
                      SizedBox(width: 2 * Sizeconfig.horizontalBlock),
                      Text(
                        widget.product.rating.toString(),
                        style: appStyle(
                            fw: FontWeight.w600, size: 13, color: Colors.black),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 20 * Sizeconfig.verticalBlock),
              ListView.builder(
                  physics: const ScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: reviews.length,
                  itemBuilder: (context, index) =>
                      ReviewWidget(review: reviews[index])),
              SizedBox(height: 20 * Sizeconfig.verticalBlock),
              Center(
                child: SizedBox(
                  width: 325,
                  height: 50,
                  child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                              side:
                                  const BorderSide(color: Color(0xff0C1A30)))),
                      child: Text(
                        "Add Review",
                        style: appStyle(
                            fw: FontWeight.w500, size: 14, color: Colors.black),
                      )),
                ),
              ),
              SizedBox(height: 20 * Sizeconfig.verticalBlock),
              Row(
                children: [
                  Text(
                    "Featured Product",
                    style: appStyle(
                        fw: FontWeight.w700, size: 16, color: Colors.black),
                  ),
                  const Spacer(),
                  Text(
                    "See All",
                    style: appStyle(
                        fw: FontWeight.w600,
                        size: 12,
                        color: const Color(0xff3669C9)),
                  ),
                ],
              ),
              SizedBox(height: 20 * Sizeconfig.verticalBlock),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Center(
                          child: Image(
                              image: AssetImage("assets/p4.jpg"), width: 94)),
                      const SizedBox(height: 10),
                      Text("Keripik Pisang Pre..",
                          style: appStyle(
                              fw: FontWeight.w500,
                              size: 14,
                              color: Colors.black)),
                      const SizedBox(height: 5),
                      Text("EGP 50.00",
                          style: appStyle(
                              fw: FontWeight.w700,
                              size: 12,
                              color: const Color(0xffFE3A30))),
                      const SizedBox(height: 5),
                      Row(
                        children: [
                          const Icon(
                            Icons.star_rate_rounded,
                            color: Color(0xffFFC120),
                            size: 18,
                          ),
                          SizedBox(width: 2 * Sizeconfig.horizontalBlock),
                          Text(
                            widget.product.rating.toString(),
                            style: appStyle(
                                fw: FontWeight.w600,
                                size: 10,
                                color: Colors.black),
                          ),
                          SizedBox(width: 20 * Sizeconfig.horizontalBlock),
                          Text(
                            "${reviews.length} Reviews",
                            style: appStyle(
                                fw: FontWeight.w600,
                                size: 10,
                                color: Colors.black),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const Spacer(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Center(
                          child: Image(
                              image: AssetImage("assets/p4.jpg"), width: 94)),
                      const SizedBox(height: 10),
                      Text("Keripik Pisang Pre..",
                          style: appStyle(
                              fw: FontWeight.w500,
                              size: 14,
                              color: Colors.black)),
                      const SizedBox(height: 5),
                      Text("EGP 50.00",
                          style: appStyle(
                              fw: FontWeight.w700,
                              size: 12,
                              color: const Color(0xffFE3A30))),
                      const SizedBox(height: 5),
                      Row(
                        children: [
                          const Icon(
                            Icons.star_rate_rounded,
                            color: Color(0xffFFC120),
                            size: 18,
                          ),
                          SizedBox(width: 2 * Sizeconfig.horizontalBlock),
                          Text(
                            widget.product.rating.toString(),
                            style: appStyle(
                                fw: FontWeight.w600,
                                size: 10,
                                color: Colors.black),
                          ),
                          SizedBox(width: 20 * Sizeconfig.horizontalBlock),
                          Text(
                            "${reviews.length} Reviews",
                            style: appStyle(
                                fw: FontWeight.w600,
                                size: 10,
                                color: Colors.black),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 30 * Sizeconfig.verticalBlock),
              Row(
                children: [
                  SizedBox(
                    width: 153,
                    height: 50,
                    child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            isAdded = !isAdded;
                          });
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: isAdded
                                ? const Color(0xffFE3A30)
                                : const Color(0xff3669C9),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            )),
                        child: Row(
                          children: [
                            Text(
                              isAdded ? "Added" : "Add to cart",
                              style: appStyle(
                                  fw: FontWeight.w500,
                                  size: 14,
                                  color: Colors.white),
                            ),
                            const Spacer(),
                            Icon(isAdded
                                ? Icons.favorite_rounded
                                : Icons.favorite_border_rounded)
                          ],
                        )),
                  ),
                  const Spacer(),
                  SizedBox(
                    width: 153,
                    height: 50,
                    child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xff3669C9),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            )),
                        child: Text(
                          "Add to cart",
                          style: appStyle(
                              fw: FontWeight.w500,
                              size: 14,
                              color: Colors.white),
                        )),
                  ),
                ],
              ),
              SizedBox(height: 30 * Sizeconfig.verticalBlock),
            ],
          ),
        ),
      ),
    );
  }
}
