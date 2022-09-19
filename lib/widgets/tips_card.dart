import 'package:flutter/material.dart';
import 'package:flutter_hotel_apps/model/tips.dart';
import 'package:flutter_hotel_apps/theme.dart';

class TipsCard extends StatelessWidget {
  final Tips tips;

  TipsCard(this.tips);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          tips.imageUrl,
          width: 80,
        ),
        SizedBox(
          width: 16,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              tips.title,
              style: regularTextStyle.copyWith(
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              "Updated ${tips.updatedAt}",
              style: regularTextStyle.copyWith(
                  fontSize: 14, fontWeight: FontWeight.w300, color: greyColor),
            ),
          ],
        ),
        Spacer(),
        IconButton(
          onPressed: (() {}),
          icon: Icon(
            Icons.chevron_right,
            size: 24,
            color: greyColor,
          ),
        ),
      ],
    );
  }
}
