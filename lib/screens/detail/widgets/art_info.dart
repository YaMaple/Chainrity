import 'package:flutter/material.dart';
import '../../../models/art.dart';
import '../../../models/profile.dart';

class ArtInfo extends StatelessWidget {
  final Art art;
  ArtInfo(this.art, {Key? key}) : super(key: key);

  final Profile profile = Profile.generateProfile();
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            art.name!,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 22,
            ),
          ),
          const SizedBox(height: 20),
          Row(
            children: [
              _buildIconText(
                art.avatarUrl!,
                0,
                'Creator',
                art.creator!,
              ),
              Spacer(),
              _buildIconText(
                'assets/images/Renminbi.png',
                8,
                'Current price',
                '${art.price}',
              ),
            ],
          ),
          const SizedBox(
            height: 25,
          ),
          Text(
            art.desc!,
            style: const TextStyle(
              wordSpacing: 3,
              height: 1.3,
              color: Colors.black87,
            ),
          )
        ],
      ),
    );
  }

  _buildIconText(String imgUrl, double padding, String title, String text) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 40,
          width: 40,
          padding: EdgeInsets.all(padding),
          decoration: BoxDecoration(
            color: Colors.grey[200],
            shape: BoxShape.circle,
          ),
          child: Image.asset(imgUrl),
        ),
        const SizedBox(width: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(
                color: Colors.black45,
              ),
            ),
            Text(
              text,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
                height: 1.5,
              ),
            ),
          ],
        )
      ],
    );
  }
}
