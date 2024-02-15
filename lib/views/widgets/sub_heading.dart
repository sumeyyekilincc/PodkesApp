import 'package:flutter/material.dart';
import 'package:podkes/resources/_r.dart';

class SubHeading extends StatelessWidget {
  const SubHeading({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: Text(
                    "Trending",
                    style: TextStyle(
                      fontFamily: R.fonts.inter,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: R.color.explorePageSubHead,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
              ],
            );
  }
}