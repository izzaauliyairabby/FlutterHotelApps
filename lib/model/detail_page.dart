import 'package:flutter/material.dart';
import 'package:flutter_hotel_apps/pages/error_page.dart';
import 'package:flutter_hotel_apps/theme.dart';
import 'package:flutter_hotel_apps/widgets/facility_item.dart';
import 'package:url_launcher/url_launcher.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // URL
    launchUrl(String url) async {
      if (await canLaunch(url)) {
        launch(url);
      } else {
        //throw (url);
        // ERROR PAGE
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ErrorPage(),
          ),
        );
      }
    }

    return Scaffold(
      backgroundColor: whiteColor,
      body: SafeArea(
        bottom: false,
        child: Stack(
          children: [
            // Image Background
            Image.asset(
              "assets/thumbnail1.png",
              width: MediaQuery.of(context).size.width,
              height: 350,
              fit: BoxFit.cover,
            ),
            ListView(
              children: [
                SizedBox(
                  height: 328,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(
                        20,
                      ),
                    ),
                    color: whiteColor,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: edge,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                // TITLE
                                Text(
                                  "Paris van Java",
                                  style: blackTextStyle.copyWith(
                                    fontSize: 22,
                                  ),
                                ),
                                SizedBox(
                                  height: 2,
                                ),
                                Text.rich(
                                  TextSpan(
                                    text: "\$52",
                                    style: greenTextStyle.copyWith(
                                      fontSize: 16,
                                    ),
                                    children: [
                                      TextSpan(
                                          text: '/ Month', style: greyTextStyle)
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            // RATING STAR
                            Row(
                              children: [
                                Image.asset(
                                  "assets/Icon_star.png",
                                  width: 20,
                                ),
                                SizedBox(
                                  width: 2,
                                ),
                                Image.asset(
                                  "assets/Icon_star.png",
                                  width: 20,
                                ),
                                SizedBox(
                                  width: 2,
                                ),
                                Image.asset(
                                  "assets/Icon_star.png",
                                  width: 20,
                                ),
                                SizedBox(
                                  width: 2,
                                ),
                                Image.asset(
                                  "assets/Icon_star.png",
                                  width: 20,
                                ),
                                SizedBox(
                                  width: 2,
                                ),
                                Image.asset(
                                  "assets/Icon_star.png",
                                  width: 20,
                                  color: Colors.grey,
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      // MAIN FACILITIES,
                      Padding(
                        padding: EdgeInsets.only(left: edge),
                        child: Text(
                          "Main Facilities",
                          style: regularTextStyle.copyWith(
                              fontWeight: FontWeight.w400, fontSize: 16),
                        ),
                      ),
                      SizedBox(
                        height: 12,
                      ),

                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: edge,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            FacilityItem(
                              name: " Kitchen",
                              ImageUrl: "assets/Icon_kitchen.png",
                              total: 2,
                            ),
                            FacilityItem(
                              name: " Bedroom",
                              ImageUrl: "assets/Icon_bedroom.png",
                              total: 1,
                            ),
                            FacilityItem(
                              name: " Cupboard",
                              ImageUrl: "assets/Icon_lemari.png",
                              total: 1,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      // PHOTOS
                      Padding(
                        padding: EdgeInsets.only(left: edge),
                        child: Text(
                          "Photos",
                          style: regularTextStyle.copyWith(
                              fontWeight: FontWeight.w400, fontSize: 16),
                        ),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Container(
                        height: 88,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            SizedBox(
                              width: edge,
                            ),
                            Image.asset(
                              "assets/pic1.png",
                              width: 110,
                              height: 88,
                              fit: BoxFit.cover,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Image.asset(
                              "assets/pic2.png",
                              width: 110,
                              height: 88,
                              fit: BoxFit.cover,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Image.asset(
                              "assets/pic3.png",
                              width: 110,
                              height: 88,
                              fit: BoxFit.cover,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Image.asset(
                              "assets/pic4.png",
                              width: 110,
                              height: 88,
                              fit: BoxFit.cover,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Image.asset(
                              "assets/pic5.png",
                              width: 110,
                              height: 88,
                              fit: BoxFit.cover,
                            ),
                            SizedBox(
                              width: edge,
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: EdgeInsets.only(left: edge),
                  child: Text(
                    "Location",
                    style: regularTextStyle.copyWith(
                        fontWeight: FontWeight.w400, fontSize: 16),
                  ),
                ),
                SizedBox(
                  height: 6,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: edge),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Jln. Mayor Idma No.04 \n Kuningan",
                        style: greyTextStyle.copyWith(
                            fontWeight: FontWeight.w400, fontSize: 16),
                      ),
                      InkWell(
                        onTap: () {
                          launchUrl(
                              "https://www.google.co.id/maps/place/Bandung,+Kota+Bandung,+Jawa+Barat/@-6.903363,107.6081381,13z/data=!3m1!4b1!4m5!3m4!1s0x2e68e6398252477f:0x146a1f93d3e815b2!8m2!3d-6.917459!4d107.6191199");
                          // ERROR PAGE 404
                          //launchUrl("asdadfdsgrstwer");
                        },
                        child: Image.asset(
                          "assets/Icon_location.png",
                          width: 40,
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Container(
                  margin: EdgeInsets.symmetric(
                    horizontal: edge,
                  ),
                  height: 50,
                  width: MediaQuery.of(context).size.width - (2 * edge),
                  child: RaisedButton(
                    onPressed: () {
                      launchUrl("tel://+6281123456789"); // Dialing
                    },
                    color: greenColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                        17,
                      ),
                    ),
                    child: Text(
                      "Book Now",
                      style: whiteTextStyle.copyWith(fontSize: 18),
                    ),
                  ),
                ),
                SizedBox(
                  height: 40,
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 24,
                vertical: 30,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: (() {
                      Navigator.pop(context);
                    }),
                    child: Image.asset(
                      "assets/Icon_back.png",
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Image.asset(
                      "assets/Icon_next.png",
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
