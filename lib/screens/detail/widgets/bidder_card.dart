import 'dart:math';
import 'package:flutter/material.dart';
import '../../../models/colors.dart';
import '../../../models/bidder.dart';
import 'package:intl/intl.dart';

class BidderCard extends StatelessWidget {
  final Bidder bidder;
  final VoidCallback press;
  const BidderCard({required this.bidder, required this.press, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Random random = Random();
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: randomPinkList[random.nextInt(9) + 1]),
            ),
            const SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '${bidder.name}',
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  '${DateFormat.yMMMd().format(bidder.date!)} at ${bidder.date!.hour}:${bidder.date!.minute}',
                  style: TextStyle(
                    color: Colors.grey[400]!,
                  ),
                )
              ],
            )
          ],
        ),
        Text(
          '${bidder.price} CNY',
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 14,
          ),
        ),
      ],
    );
  }
}
