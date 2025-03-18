// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:food_app/pages/details_page.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFF2C3DDB),
              Color(0xff565ea8c4),
            ],
            stops: [0.7, 1.0],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  left: 40.0, bottom: 40, top: 156, right: 40),
              child: Image.asset(
                'lib/images/Ellipse 1.png',
                width: 350,
                height: 350,
              ),
            ),
            Padding(
                padding: const EdgeInsets.all(30.0),
                child: Text("Enjoy Your Food",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.w900,
                      color: Colors.white,
                    ))),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  padding: EdgeInsets.all(15),
                  minimumSize: Size(268, 66),
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => DetailsPage()));
                },
                child: Text(
                  "Get Started",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF727ABD),
                    fontWeight: FontWeight.w900,
                    fontSize: 24,
                  ),
                ),
                ),
                
          ],
        ),
      ),
    );
  }
}
