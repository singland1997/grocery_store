import 'package:flutter/material.dart';
import 'package:grocery_store/screens/buyers/home/widgets/banner.dart';
import 'package:grocery_store/screens/buyers/home/widgets/search_input.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            'Welcome. What are you\nlooking for?',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10),
          SearchInput(),
          SizedBox(height: 10),
          BannerWidget(),
        ],
      ),
    );
  }
}
