import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_appdesign_ui_template/home_page.dart';

class SplashScrean extends StatefulWidget {
  @override
  State<SplashScrean> createState() => _SplashScreanState();
}

class _SplashScreanState extends State<SplashScrean> {
  void initState() {
    super.initState();
    _startTimer();
  }

  void _startTimer() {
    Future.delayed(const Duration(seconds: 2), () {
      if (!mounted) return; // safety check, avoids crash if screen was disposed
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) => const HomePage()),
      );
    });
  }

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
                SizedBox(
                  width: 400,
                  child: Stack(
                    children: [
                      Image(image: AssetImage("assets/images/image2.png")),
                      Positioned(
                        left: 35,
                        top: 75,
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
