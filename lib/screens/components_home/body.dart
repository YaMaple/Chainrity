import 'package:flutter/material.dart';

import '../section_title.dart';
import '../components_home/promotion_banner.dart';
import '../big_card_image_slide.dart';
import '../../../demoData.dart';
import '../size_config.dart';
import 'medium_card_list.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            VerticalSpacing(of: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: BigCardImageSlide(images: demoBigImages),
            ),
            VerticalSpacing(of: 25),
            SectionTitle(
              title: "Featured Partners",
            ),
            VerticalSpacing(of: 15),
            MediumCardList(),
            VerticalSpacing(of: 25),
            // Banner
            PromotionBanner(),
            VerticalSpacing(of: 25),
            SectionTitle(
              title: "Best Pick",
            ),
            VerticalSpacing(of: 15),
            MediumCardList(),
            VerticalSpacing(of: 25),
          ],
        ),
      ),
    );
  }
}
