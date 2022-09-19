import 'package:flutter/material.dart';
import 'package:flutter_hotel_apps/pages/home_page.dart';
import 'package:flutter_hotel_apps/theme.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      appBar: AppBar(
        toolbarHeight: 20,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: <Color>[Colors.yellow, Colors.green],
            ),
          ),
        ),
      ),
      body: SafeArea(
        bottom: false,
        child: Stack(
          children: [
            Align(
              alignment: Alignment.bottomCenter,
              child: Image.asset(
                "assets/hotel.png",
                fit: BoxFit.fill,
                width: 500,
                height: 400,
              ),
            ),
            Padding(
              // untuk memposisikan
              padding: EdgeInsets.only(
                top: 40,
                left: 30,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment
                    .start, //untuk mengatur posisi logo kembali
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/logo.png"),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Text(
                    "Find Cozy Hotel \nto Stay and Happy!",
                    style: GoogleFonts.poppins(
                        fontSize: 24, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Text(
                    "Stop membuang banyak waktu",
                    style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Colors.grey),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "pada tempat yang tidak habitable",
                    style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Colors.grey),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Container(
                    height: 50,
                    width: 210,
                    child: RaisedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => HomePage(),
                          ),
                        );
                      },
                      color: greenColor,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(17)),
                      child: Text(
                        "Explore Now",
                        style: GoogleFonts.poppins(
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 51,
                  ),
                  // Container(
                  //   height: 403,
                  //   width: 375,
                  // )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
