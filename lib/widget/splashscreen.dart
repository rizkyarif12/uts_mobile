import 'package:flutter/material.dart';
import 'dart:async';
import 'package:uts_mobile/main.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) => BottomNav()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Centering the Row containing the images
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/LinkAja.png', // Gambar LinkAja
                    height: 80,
                  ),
                  SizedBox(width: 20), // Space between the images
                  Image.asset(
                    'assets/splash2.png', // Gambar splash2
                    height: 150, // You can adjust the height as needed
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Image.asset(
              'assets/splash3.png', // Gambar splash3
              height: 150, // You can adjust the height as needed
            ),
            SizedBox(height: 20),
            Text(
              'PeDe APA AJA BISA',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.red[900],
              ),
            ),

            SizedBox(height: 20),
            CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(Colors.red[900]!),
            ),
          ],
        ),
      ),
    );
  }
}
