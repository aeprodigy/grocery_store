// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui_layout/pages/home_page.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Column(
          children: [
            //logo
            Padding(
              padding: const EdgeInsets.only(
                left: 100.0,
                right: 100.0,
                top: 120,
                bottom: 20,
              ),
              child: Image.asset("assets/images/banana.png"),
            ),
            //intro title
             Padding(
              padding: EdgeInsets.all(
                20.0,
              ),
              child: Text(
                "Fresh Vegetables Delivery At your Doorstep!",
                textAlign: TextAlign.center,
                style: GoogleFonts.notoSerif(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            //Subtitle
            // groceries gives you fresh vegetables and fruits
            Text(
              'Fresh items everyday',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey[500],
              ),
            ),

            Spacer(),
            //get started button
            GestureDetector(
              onTap: () => Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) {
                return HomePage();
              })),
              child: Container(
                padding: EdgeInsets.all(24),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Colors.yellow[600],
                ),
                child: const Text(
                  "Get Started",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
