import 'package:flutter/material.dart';

import '../section_title.dart';
import '../components_home/promotion_banner.dart';
import '../big_card_image_slide.dart';
import '../../../demoData.dart';
import '../size_config.dart';
import 'medium_card_list.dart';
import 'package:flutter_svg/svg.dart';
import '../constants_search.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            VerticalSpacing(of: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
              child: TextFormField(
                style: kSecondaryBodyTextStyle,
                textInputAction: TextInputAction.search,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color.fromARGB(0xff, 0x14, 0x27, 0x4e),
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(10)),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        width: 1.0,
                        color: Color.fromARGB(0xff, 0x14, 0x27, 0x4e)),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  hintText: "Search on Chainrity",
                  contentPadding: kTextFieldPadding,
                  prefixIcon: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SvgPicture.asset(
                      'assets/images/search.svg',
                      color: kBodyTextColor,
                    ),
                  ),
                ),
              ),
            ),
            VerticalSpacing(of: 20),
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
