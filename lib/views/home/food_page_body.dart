import 'package:flutter/material.dart';
import 'package:food_app/contrants/colors.dart';
import 'package:food_app/contrants/images.dart';
import 'package:food_app/views/widgets/bigText.dart';
import 'package:food_app/views/widgets/iconText.dart';
import 'package:food_app/views/widgets/smallText.dart';

class FoodPageBody extends StatefulWidget {
  const FoodPageBody({super.key});

  @override
  State<FoodPageBody> createState() => _FoodPageBodyState();
}

class _FoodPageBodyState extends State<FoodPageBody> {
  PageController pageController = PageController(viewportFraction: 0.85);
  @override
  Widget build(BuildContext context) {
    return Container(
    
      height: 310,
      child: PageView.builder(
          controller: pageController,
          itemCount: 5,
          itemBuilder: (context, index) {
            return _buildPageItem(index);
          }),
    );
  }
}

Widget _buildPageItem(int index) {
  return Stack(
    children: [
      Container(
        height: 220,
        margin: EdgeInsets.symmetric(horizontal: 10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: index.isEven ? App.paracolor : App.signcolor,
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  Images.food5,
                ))),
      ),
      Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          height: 130,
          margin: EdgeInsets.only(left: 30, right: 30, bottom: 30),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Colors.white,
          ),
          child: Container(
            width: double.infinity,
            padding: EdgeInsets.only(left: 20,right: 20,top: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                BigText(text: "Chinese Side"),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Wrap(
                      children: List.generate(
                          5,
                          (index) => Icon(
                                Icons.star,
                                size: 15,
                                color: App.maincolor,
                              )),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    SmallText(text: "4.5"),
                    SizedBox(
                      width: 10,
                    ),
                    SmallText(text: "1287"),
                    SizedBox(
                      width: 10,
                    ),
                    SmallText(text: "comments"),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconText(
                        icon: Icons.circle,
                        iconcolor: Colors.orange,
                        text: "Normal",
                       ),
                    IconText(
                        icon: Icons.location_on,
                        iconcolor:App.maincolor,
                        text: "1,7km",
                       ),
                    IconText(
                        icon: Icons.access_time_outlined,
                        iconcolor: App.maincolor,
                        text: "32min",
                       ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    ],
  );
}
