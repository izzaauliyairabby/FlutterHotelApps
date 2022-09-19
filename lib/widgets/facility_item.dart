import 'package:flutter/material.dart';
import 'package:flutter_hotel_apps/theme.dart';

class FacilityItem extends StatelessWidget {
  final String name;
  final String ImageUrl;
  final int total;

  FacilityItem(
      { this.name,  this.ImageUrl,  this.total});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(
          ImageUrl,
          width: 32,
        ),
        SizedBox(
          height: 8,
        ),
        Text.rich(
          TextSpan(
            text: "$total",
            style: greenTextStyle.copyWith(
              fontSize: 14,
            ),
            children: [
              TextSpan(
                text: "$name",
                style: greyTextStyle.copyWith(
                  fontSize: 14,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
