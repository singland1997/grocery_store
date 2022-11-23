import 'package:flutter/material.dart';

class BannerWidget extends StatelessWidget {
  const BannerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(9),
        color: Colors.blue,
      ),
      child: PageView(
        children: const [
          Text('Banner 1'),
          Text('Banner 2'),
          Text('Banner 3'),
        ],
      ),
    );
  }
}
