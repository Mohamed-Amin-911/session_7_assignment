import 'package:flutter/material.dart';
import 'package:session_7/core/size_config.dart';
import 'package:session_7/core/text_style.dart';
import 'package:session_7/data_model/product_class.dart';
import 'package:session_7/data_model/search_history_class.dart';
import 'package:session_7/data_model/search_suggestion_class.dart';
import 'package:session_7/widget/search_history.dart';
import 'package:session_7/widget/search_suggestion.dart';

const String txt1 = "Search History";

Widget content1 = Column(
  children: [
    SearchHistoryWidget(text: searchHistory[searchHistory.length - 1]),
    SizedBox(height: 20 * Sizeconfig.verticalBlock),
    SearchHistoryWidget(text: searchHistory[searchHistory.length - 2]),
    SizedBox(height: 20 * Sizeconfig.verticalBlock),
    SearchHistoryWidget(text: searchHistory[searchHistory.length - 3]),
  ],
);

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  TextEditingController searchController = TextEditingController();

  String txt = txt1;
  Widget content = content1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios_new_rounded,
              color: Colors.black,
            )),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          "Search",
          style: appStyle(fw: FontWeight.w700, size: 16, color: Colors.black),
        ),
      ),
      body: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: 20 * Sizeconfig.verticalBlock),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 30 * Sizeconfig.verticalBlock),
            Center(
              child: SizedBox(
                width: 325,
                height: 50,
                child: TextField(
                  onChanged: (value) {
                    setState(() {
                      for (var i in productList) {
                        if (i.title[0].toLowerCase() == value) {
                          suggests.add(i.title);
                        }
                      }

                      if (value == "") {
                        suggests = [];
                        txt = txt1;
                        content = content1;
                      } else {
                        txt = "Available Items";
                        content = ListView.builder(
                          shrinkWrap: true,
                          itemCount: suggests.length,
                          itemBuilder: (context, index) =>
                              SearchSuggestionWidget(text: suggests[index]),
                        );
                      }
                    });
                  },
                  controller: searchController,
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      suffixIcon: const Icon(
                        Icons.search,
                        color: Colors.black,
                      ),
                      hintText: "Search Product Name",
                      hintStyle: appStyle(
                          fw: FontWeight.w700,
                          size: 17,
                          color: const Color(0xffC4C5C4))),
                ),
              ),
            ),
            SizedBox(height: 30 * Sizeconfig.verticalBlock),
            Text(
              txt,
              style:
                  appStyle(fw: FontWeight.w700, size: 17, color: Colors.black),
            ),
            SizedBox(height: 30 * Sizeconfig.verticalBlock),
            SizedBox(height: 120, child: SingleChildScrollView(child: content))
          ],
        ),
      ),
    );
  }
}
