import 'package:flutter/material.dart';

import 'constants_search.dart';

class SectionTitle extends StatelessWidget {
  const SectionTitle({
    Key? key,
    this.isMainSection = true,
    required this.title,
  }) : super(key: key);

// Main Section means on Home page section
  final bool isMainSection;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            isMainSection ? title : title.toUpperCase(),
            style: isMainSection
                ? kH3TextStyle
                : kSecondaryBodyTextStyle.copyWith(fontSize: 16),
          ),
        ],
      ),
    );
  }
}
