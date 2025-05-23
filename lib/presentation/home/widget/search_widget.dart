import 'package:flutter/material.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({
    super.key,
    required this.onSearch,
  });

  final Function(String) onSearch;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
      margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        border: Border.all(
          color: Colors.grey,
          width: 1,
        ),
      ),
      child: TextField(
        onChanged: onSearch,
        decoration: InputDecoration(
          hintText: 'Search',
          border: InputBorder.none,
          suffixIcon: Icon(Icons.search),
        ),
      ),
    );
  }
}
