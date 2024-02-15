import 'package:flutter/material.dart';
import 'package:podkes/resources/_r.dart';

class ElevatedButtonWidgets extends StatelessWidget {
   ElevatedButtonWidgets({super.key});

  final List<Map<String, dynamic>> buttons = [
    {"label": "All", "width": 59, "color": R.color.elevatedButtonColor, "color2": R.color.elevatedButtonBgColor},
    {"label": "Life", "width": 85, "color": R.color.elevatedButtonColor2, "color2": R.color.elevatedButtonBgColor},
    {"label": "Comedy", "width": 103, "color": R.color.elevatedButtonColor2,"color2": R.color.elevatedButtonBgColor},
    {"label": "Tech", "width": 103, "color": R.color.elevatedButtonColor2, "color2": R.color.elevatedButtonBgColor},

  ];

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        for (var button in buttons)
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 13.5),
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: button["color2"],
                fixedSize: Size(button["width"].toDouble(), 36),
              ),
              child: Text(
                button["label"],
                style: TextStyle(
                  fontFamily: R.fonts.inter,
                  fontSize: 12,
                  color: button["color"], 
                ),
              ),
            ),
          ),
      ],
    );
  }
}
