import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashScrean extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              const Color.fromARGB(126, 232, 47, 47),
              const Color.fromARGB(255, 212, 22, 44),
            ],
          ),
        ),
        child: Column(
          children: [
            Expanded(
              child: Center(
                child: SvgPicture.asset(
                  "assets/images/Foodgo.svg",
                  width: 130,
                  height: 100,
                ),
              ),
            ),
            Row(
              children: [
                SizedBox(width: 400,
                  child: Stack(
                    children: [
                      Image(
                        image: AssetImage("assets/images/image2.png"),
                      ),
                      Positioned(
                        left: 35,top: 75,
                        child: Image(
                          image: AssetImage("assets/images/image1.png"),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
