import 'package:flutter/material.dart';
import 'package:flutter_hotel_apps/model/detail_page.dart';
import 'package:flutter_hotel_apps/theme.dart';
import 'package:flutter_hotel_apps/model/space.dart';

class SpaceCard extends StatelessWidget {
  final Space space;

  SpaceCard(this.space);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailPage(),
          ),
        );
      },
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(18),
            child: Container(
              width: 130,
              height: 110,
              child: Stack(
                children: [
                  Image.network(
                    space.imageUrl,
                    width: 130,
                    height: 110,
                    fit: BoxFit.cover,
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      // Logo Favorit
                      width: 70,
                      height: 30,
                      decoration: BoxDecoration(
                        color: greenColor,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(30),
                        ),
                      ),
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/Icon_star.png',
                              width: 22,
                              height: 22,
                            ),
                            Text(
                              "${space.rating}/5",
                              style: regularTextStyle.copyWith(
                                color: Colors.white,
                                fontSize: 15,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            width: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                space.name,
                style: blackTextStyle.copyWith(
                  fontSize: 18,
                ),
              ),
              SizedBox(
                height: 2,
              ),
              Text.rich(
                TextSpan(
                  text: "\$${space.price}",
                  style: greenTextStyle.copyWith(
                    fontSize: 16,
                  ),
                  children: [TextSpan(text: '/ Month', style: greyTextStyle)],
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                '${space.city}, ${space.country}',
                style: regularTextStyle.copyWith(
                  color: greyColor,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
