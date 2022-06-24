import 'package:async/async.dart';
import 'package:duralga/constants.dart';
import 'package:duralga/route_search/route_search_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

AppBar buildAppBar({required BuildContext ctx}) {
  return AppBar(
    automaticallyImplyLeading: false,
    title: GestureDetector(
      onTap: () {
        // Get.toNamed('/route-search');
        showSearch(context: ctx, delegate: MySearchDelegate());
      },
      child: Container(
        margin: const EdgeInsets.all(8),
        padding: const EdgeInsets.symmetric(
            horizontal: kDefaultPadding / 2, vertical: kDefaultPadding * .9),
        decoration: BoxDecoration(
            border: Border.all(width: 0.1),
            borderRadius: BorderRadius.circular(kBorderRadius / 2)),
        child: Row(
          children: [
            Expanded(
                flex: 2,
                child: SvgPicture.asset(
                  'assets/icons/blue_bus.svg',
                  fit: BoxFit.fitHeight,
                  height: kIconSize,
                )),
            const Expanded(
              flex: 10,
              child: Text('Search for bus stops...'),
            ),
            Expanded(
              flex: 2,
              child: IconButton(
                  splashRadius: 26,
                  padding: EdgeInsets.zero,
                  constraints: const BoxConstraints(),
                  onPressed: () {
                    Get.toNamed('/setting');
                  },
                  icon: const Icon(Icons.settings)),
            ),
          ],
        ),
      ),
    ),
  );
}

class MySearchDelegate extends SearchDelegate {
  final TextEditingController textController = TextEditingController();
  List<String> searchResults = [
    'Home',
    'Shop',
    'Bazar',
    'India',
    'Village',
    'Work',
  ];

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        // padding: EdgeInsets.zero,
        // constraints: const BoxConstraints(),
        splashRadius: 26,
        onPressed: () {
          if (query.isEmpty) {
            close(context, null);
          } else {
            query = '';
          }
        },
        icon: const Icon(Icons.clear, color: kBlueColor),
      ),
    ];
    // throw UnimplementedError();
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      // constraints: const BoxConstraints(),
      // padding: EdgeInsets.zero,
      splashRadius: 26,
      onPressed: () {
        Get.back();
      },
      icon: const Icon(Icons.arrow_back_rounded, color: kBlueColor),
    );

    // throw UnimplementedError();
  }

  @override
  Widget buildResults(BuildContext context) {
    Center(
      child: Text(
        query,
        style: const TextStyle(
            fontSize: kCustomFontSize * 3, fontWeight: FontWeight.bold),
      ),
    );
    throw UnimplementedError();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> suggestions = searchResults.where((searchResult) {
      final result = searchResult.toLowerCase();
      final input = query.toLowerCase();

      return result.contains(input);
    }).toList();

    return ListView.builder(
        itemCount: suggestions.length,
        itemBuilder: (context, index) {
          final suggestion = suggestions[index];
          return ListTile(
            title: Text(suggestion),
            onTap: () {
              query = suggestion;
            },
          );
        });
    // throw UnimplementedError();
  }
}
