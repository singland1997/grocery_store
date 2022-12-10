import 'package:flutter/material.dart';
import 'package:grocery_store/controllers/banner/banner_controller.dart';
import 'package:grocery_store/models/banner_model.dart';
import 'package:provider/provider.dart';

class BannerWidget extends StatelessWidget {
  const BannerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final bannerImages = Provider.of<List<BannerImage>>(context);
    return Container(
      height: 140,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(9),
      ),
      child: PageView.builder(
        itemCount: bannerImages.length,
        itemBuilder: (context, index) {
          return ClipRRect(
            borderRadius: BorderRadius.circular(9),
            child: Image.network(
              bannerImages[index].bannerImage,
              fit: BoxFit.cover,
            ),
          );
        },
      ),
    );
  }
}
