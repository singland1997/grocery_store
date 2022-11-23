import 'package:flutter/material.dart';
import 'package:grocery_store/screens/buyers/home/widgets/banner.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Welcome. What are you\nlooking for?',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 10),
        TextField(
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.all(8),
            isDense: true,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(9),
            ),
            hintText: 'Search',
            prefixIcon: const Icon(Icons.search_outlined),
          ),
        ),
        const SizedBox(height: 10),
        const BannerWidget(),
      ],
    );
  }
}
