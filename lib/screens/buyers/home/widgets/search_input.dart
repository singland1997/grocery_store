import 'package:flutter/material.dart';

class SearchInput extends StatelessWidget {
  const SearchInput({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.all(8),
        isDense: true,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(9),
        ),
        hintText: 'Search',
        prefixIcon: const Icon(Icons.search_outlined),
      ),
    );
  }
}
