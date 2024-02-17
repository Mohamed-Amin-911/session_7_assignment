import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:session_7/core/size_config.dart';
import 'package:session_7/core/text_style.dart';
import 'package:badges/badges.dart' as badges;
import 'package:session_7/data_model/product_class.dart';
import 'package:session_7/screens/product_screen.dart';
import 'package:session_7/screens/search_screen.dart';
import 'package:session_7/widget/category_item.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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
                  SizedBox(width: 50 * Sizeconfig.horizontalBlock),
                  Center(
                    child: Text(
                      "BUMDES",
                      style: appStyle(
                          fw: FontWeight.w700,
                          size: 18,
                          color: const Color(0xff3669C9)),
                    ),
                  ),
                  // SizedBox(width: 80 * Sizeconfig.horizontalBlock),
                  Row(
                    children: [
                      badges.Badge(
                        position: badges.BadgePosition.custom(top: -3, end: -2),
                        child: SvgPicture.asset("assets/icn1.svg"),
                      ),
                      SizedBox(width: 10 * Sizeconfig.horizontalBlock),
                      badges.Badge(
                        position: badges.BadgePosition.custom(top: -3, end: -2),
                        child: SvgPicture.asset("assets/icn2.svg"),
                      ),
                      SizedBox(
                        width: 5,
                      )
                    ],
                  ),
                ],
              ),
              SizedBox(height: 30 * Sizeconfig.verticalBlock),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SearchScreen(),
                      ));
                },
                child: SizedBox(
                  width: 325 * Sizeconfig.horizontalBlock,
                  height: 20 * Sizeconfig.verticalBlock,
                  child: Row(
                    children: [
                      Text(
                        "Search Product Name",
                        style: appStyle(
                            fw: FontWeight.w500,
                            size: 16,
                            color: const Color(0xffC4C5C4)),
                      ),
                      const Spacer(),
                      const Icon(Icons.search)
                    ],
                  ),
                ),
              ),
              SizedBox(height: 30 * Sizeconfig.verticalBlock),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Image(image: AssetImage("assets/img1.png")),
                    SizedBox(width: 10 * Sizeconfig.horizontalBlock),
                    const Image(image: AssetImage("assets/img1.png")),
                  ],
                ),
              ),
              SizedBox(height: 30 * Sizeconfig.verticalBlock),
              Row(
                children: [
                  Text(
                    "Categories",
                    style: appStyle(
                        fw: FontWeight.w800, size: 19, color: Colors.black),
                  ),
                  const Spacer(),
                  Text(
                    "See All",
                    style: appStyle(
                        fw: FontWeight.w800,
                        size: 15,
                        color: const Color(0xff3669C9)),
                  ),
                ],
              ),
              SizedBox(height: 20 * Sizeconfig.verticalBlock),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    const CategoryItem(
                        img: "assets/img2.png", title: "Vegetables"),
                    SizedBox(width: 30 * Sizeconfig.horizontalBlock),
                    const CategoryItem(img: "assets/img3.png", title: "Fruits"),
                    SizedBox(width: 30 * Sizeconfig.horizontalBlock),
                    const CategoryItem(img: "assets/img4.png", title: "Bread"),
                    SizedBox(width: 30 * Sizeconfig.horizontalBlock),
                    const CategoryItem(img: "assets/img5.png", title: "Meat"),
                    SizedBox(width: 30 * Sizeconfig.horizontalBlock),
                    const CategoryItem(img: "assets/img6.png", title: "Fish"),
                  ],
                ),
              ),
              SizedBox(height: 30 * Sizeconfig.verticalBlock),
              Row(
                children: [
                  Text(
                    "Featured Product",
                    style: appStyle(
                        fw: FontWeight.w800, size: 19, color: Colors.black),
                  ),
                  const Spacer(),
                  Text(
                    "See All",
                    style: appStyle(
                        fw: FontWeight.w800,
                        size: 15,
                        color: const Color(0xff3669C9)),
                  ),
                ],
              ),
              SizedBox(height: 20 * Sizeconfig.verticalBlock),
              GridView.builder(
                physics: const ScrollPhysics(),
                shrinkWrap: true,
                itemCount: productList.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10),
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(10),
                    child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    ProductScreen(product: productList[index]),
                              ));
                        },
                        child:
                            Image(image: AssetImage(productList[index].img))),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
