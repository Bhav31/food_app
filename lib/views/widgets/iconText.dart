import 'package:flutter/material.dart';
import 'package:food_app/views/widgets/smallText.dart';

class IconText extends StatelessWidget {
  const IconText({super.key, required this.icon, required this.iconcolor, required this.text, });
final IconData icon;
final Color iconcolor;
final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon,color: iconcolor,),
        SizedBox(width: 5,),
        SmallText(text: text,)
      ],
    );
  }
}