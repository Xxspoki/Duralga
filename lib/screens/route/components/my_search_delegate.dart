import 'package:duralga/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      splashRadius: 26,
      onPressed: () {
        Get.back();
      },
      icon: const Icon(Icons.arrow_back_rounded, color: kBlueColor),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return Center(
      child: Text(
        query,
        style: const TextStyle(
            fontSize: kCustomFontSize * 3, fontWeight: FontWeight.bold),
      ),
    );
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
