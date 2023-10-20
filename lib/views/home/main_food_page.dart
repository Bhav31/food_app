// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:food_app/contrants/colors.dart';

import 'package:food_app/views/home/food_page_body.dart';
import 'package:food_app/views/widgets/bigText.dart';
import 'package:food_app/views/widgets/smallText.dart';

class MainFoodPage extends StatefulWidget {
  const MainFoodPage({super.key});

  @override
  State<MainFoodPage> createState() => _MainFoodPageState();
}

class _MainFoodPageState extends State<MainFoodPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Container(
          child: Container(
            margin: EdgeInsets.only(top: 45, bottom: 15),
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    BigText(
                      text: "Telangana",
                      color: App.maincolor,
                    ),
                    Row(
                      children: [
                        SmallText(
                          text: "Hyderabad",
                          color: App.mainblackclr,
                        ),
                        Icon(Icons.arrow_drop_down_rounded),
                      ],
                    ),
                  ],
                ),
                Container(
                  width: 45,
                  height: 45,
                  child: Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: App.maincolor,
                  ),
                ),
              ],
            ),
          ),
        ),
        FoodPageBody(),
      ],
    ));
  }
}
