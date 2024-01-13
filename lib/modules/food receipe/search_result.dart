import 'package:flutter/material.dart';
import 'package:food_receipe_app/core/core_widgets/core_text.dart';
import 'package:food_receipe_app/core/core_widgets/global_appbar.dart';
import 'package:food_receipe_app/core/core_widgets/spaces.dart';
import 'package:food_receipe_app/modules/food%20receipe/widgets/search_itemlist.dart';
import 'package:food_receipe_app/modules/food%20receipe/widgets/top_search_bar.dart';

class SearchResultPage extends StatelessWidget {
  const SearchResultPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(65),
        child: GlobalAppBar(
          title: 'Search recipes',
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TopSearchBar(),
              Spaces.mid,
              Spaces.smallh,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  customTextWidget(
                      text: 'Search Result',
                      fontSize: 18,
                      fontWeight: FontWeight.w600),
                  customTextWidget(
                      text: '255 results',
                      color: Color(0xFFA9A9A9),
                      fontSize: 11,
                      fontWeight: FontWeight.w400),
                ],
              ),
              Spaces.mid,
              const SearchItemList(),
              Spaces.large
            ],
          ),
        ),
      ),
    );
  }
}