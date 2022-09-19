import 'package:flutter/material.dart';
import 'package:flutter_hotel_apps/model/city.dart';
import 'package:flutter_hotel_apps/model/space.dart';
import 'package:flutter_hotel_apps/model/tips.dart';
import 'package:flutter_hotel_apps/providers/space_provider.dart';
import 'package:flutter_hotel_apps/widgets/bottom_navbar.dart';
import 'package:flutter_hotel_apps/widgets/space_card.dart';
import 'package:flutter_hotel_apps/theme.dart';
import 'package:flutter_hotel_apps/widgets/city_card.dart';
import 'package:flutter_hotel_apps/widgets/tips_card.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var spaceProvider = Provider.of<SpaceProvider>(context);

    return Scaffold(
      backgroundColor: whiteColor,
      body: SafeArea(
        bottom: false,
        child: ListView(
          // For Scrolling
          children: [
            SizedBox(
              height: edge,
            ),
            // NOTE : TITLE/HEADER
            Padding(
              padding: EdgeInsets.only(left: edge),
              child: Text(
                "Explore Now",
                style: blackTextStyle.copyWith(
                    fontSize: 24, fontWeight: FontWeight.w900),
              ),
            ), //Copywith for editing
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: EdgeInsets.only(left: 24),
              child: Text(
                "Mencari apartemen yang cozy",
                style: greyTextStyle.copyWith(
                    fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            // NOTE : POPULAR CITIES
            Padding(
              padding: EdgeInsets.only(left: edge),
              child: Text(
                "Popular Cities",
                style: regularTextStyle.copyWith(
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Container(
              height: 150,
              child: ListView(
                scrollDirection: Axis.horizontal,
                // Horizontal Scrolling,
                children: [
                  SizedBox(
                    width: 24,
                  ),
                  CityCard(City(
                      id: 1,
                      imageUrl: "assets/city1.png",
                      name: "Jakarta",
                      isPopuler: false)),
                  SizedBox(
                    width: 20,
                  ),
                  CityCard(City(
                      id: 2,
                      imageUrl: "assets/city2.png",
                      name: "Bandung",
                      isPopuler: true)),
                  SizedBox(
                    width: 20,
                  ),
                  CityCard(City(
                      id: 3,
                      imageUrl: "assets/city3.png",
                      name: "Surabaya",
                      isPopuler: false)),
                  SizedBox(
                    width: 20,
                  ),
                  CityCard(City(
                      id: 4,
                      imageUrl: "assets/city4.png",
                      name: "Malang",
                      isPopuler: true)),
                  SizedBox(
                    width: 20,
                  ),
                  CityCard(City(
                      id: 5,
                      imageUrl: "assets/city5.png",
                      name: "Yogyakarta",
                      isPopuler: true)),
                  SizedBox(
                    width: 20,
                  ),
                  CityCard(City(
                      id: 6,
                      imageUrl: "assets/city6.png",
                      name: "Surakarta",
                      isPopuler: false)),
                  SizedBox(
                    width: 20,
                  ),
                  CityCard(City(
                      id: 7,
                      imageUrl: "assets/city7.png",
                      name: "Bali",
                      isPopuler: true)),
                  SizedBox(
                    width: 20,
                  ),
                  CityCard(City(
                      id: 8,
                      imageUrl: "assets/city8.png",
                      name: "Makassar",
                      isPopuler: false)),
                  SizedBox(
                    width: 20,
                  ),
                  CityCard(City(
                      id: 9,
                      imageUrl: "assets/city9.png",
                      name: "Lombok",
                      isPopuler: true)),
                  SizedBox(
                    width: 20,
                  ),
                  CityCard(
                    City(
                        id: 10,
                        imageUrl: "assets/city10.png",
                        name: "Jayapura",
                        isPopuler: false),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  SizedBox(
                    width: 24,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            //
            // NOTE : RECOMENDED SPACE
            Padding(
              padding: EdgeInsets.only(left: edge),
              child: Text(
                "Recomended Space",
                style: regularTextStyle.copyWith(
                    fontWeight: FontWeight.w400, fontSize: 16),
              ),
            ),
            // IMAGE RECOMENDED SPACE
            SizedBox(
              height: 16,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: edge,
              ),
              child: FutureBuilder(
                future: spaceProvider.getRecomendedSpaces(),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    List<Space> data = snapshot.data as List<Space>;

                    int index = 0;

                    return Column(
                      children: data.map((item) {
                        index++;
                        return Container(
                          margin: EdgeInsets.only(
                            top: index == 1 ? 0 : 30,
                          ),
                          child: SpaceCard(item),
                        );
                      }).toList(),
                    );
                  }
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                },
              ),
            ),

            SizedBox(
              height: 30,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: edge,
              ),
              child: Text(
                "Tips & Guidance",
                style: regularTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            // TIPS AND GUIDANCE
            SizedBox(
              height: 16,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: edge,
              ),
              child: Column(
                children: [
                  TipsCard(
                    Tips(
                        id: 1,
                        title: "City Free Guideline",
                        imageUrl: "assets/tips1.png",
                        updatedAt: "Updated at 30 Apr"),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TipsCard(
                    Tips(
                        id: 2,
                        title: "Bandung Anime Event",
                        imageUrl: "assets/tips2.png",
                        updatedAt: "Updated at 30 Apr"),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 70 + edge,
            ),
          ],
        ),
      ),
      floatingActionButton: Container(
        height: 65,
        width: MediaQuery.of(context).size.width - (2 * edge),
        margin: EdgeInsets.symmetric(
          horizontal: edge,
        ),
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 215, 220, 230),
          borderRadius: BorderRadius.circular(23),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            BottomNavbarItem(
              imageUrl: "assets/Icon_home_green.png",
              isActive: true,
            ),
            BottomNavbarItem(
              imageUrl: "assets/Icon_mail.png",
              isActive: false,
            ),
            BottomNavbarItem(
              imageUrl: "assets/Icon_card.png",
              isActive: false,
            ),
            BottomNavbarItem(
              imageUrl: "assets/Icon_love.png",
              isActive: false,
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
