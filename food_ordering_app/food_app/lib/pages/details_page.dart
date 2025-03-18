// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class AddOnItem extends StatelessWidget {
  final String imagePath;
  const AddOnItem({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 72,
      height: 72,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.grey[200],
      ),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Positioned.fill(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.asset(
                imagePath,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
              right: -8,
              bottom: -8,
              child: Container(
                width: 18.5,
                height: 18.5,
                decoration: BoxDecoration(
                  color: Color(0xFF096724),
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  Icons.add,
                  color: Colors.white,
                  size: 10,
                ),
              ))
        ],
      ),
    );
  }
}

class DetailsPage extends StatelessWidget {
  const DetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF2C3DDB),
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                width: double.infinity,
                height: 350,
                decoration: BoxDecoration(
                  gradient: RadialGradient(
                    colors: [
                      Color(0xff565ea8c4),
                      Color(0xFF2C3DDB),
                    ],
                    center: Alignment.center,
                    radius: 0.4,
                    focal: Alignment.center,
                    focalRadius: 0.1,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 173, left: 82, right: 82),
                child: Center(
                  child: Image.asset(
                    "lib/images/burger.png",
                    width: 265,
                    height: 207,
                  ),
                ),
              )
            ],
          ),
          SizedBox(height: 41),
          Expanded(
            child: Container(
              width: double.infinity,
              height: 463,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(70),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 40),
                    //rating and price row
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 72,
                          height: 40,
                          decoration: BoxDecoration(
                            color: Color(0xFF3A45AE),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Center(
                            child: Text(
                              "4.8",
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                        Text(
                          "\$20",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                            color: Color(0xFFE1B646),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    //title and description
                    Text(
                      "Beef Burger",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: Color.fromRGBO(0, 0, 0, 0.7),
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      "Big juicy buger with Cheese,Lettuce,Onions,\nTomato and special sauce!",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: Color.fromRGBO(0, 0, 0, 0.66),
                      ),
                    ),
                    SizedBox(height: 41),
                    Text(
                      "Add Ons",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        AddOnItem(imagePath: "lib/images/Rectangle 15.png"),
                        AddOnItem(imagePath: "lib/images/Rectangle 17.png"),
                        AddOnItem(imagePath: "lib/images/Rectangle 18.png"),
                      ],
                    ),
                    SizedBox(height: 60),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: Center(
                        child: Container(
                          width: 330,
                          height: 56,
                          child: ElevatedButton(
                            onPressed: (){},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xFF3B45AD),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                            child: Text(
                              "Add to Cart",
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
