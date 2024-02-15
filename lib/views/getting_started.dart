import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:podkes/resources/_r.dart';
import 'package:podkes/views/explore.dart';

class GettingStarted extends StatefulWidget {
  const GettingStarted({super.key});

  @override
  State<GettingStarted> createState() => _GettingStartedState();
}

class _GettingStartedState extends State<GettingStarted> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(color: R.color.bgColor),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 67,
          ),
          Image.asset(
            R.drawable.png.gSImage,
            width: 240,
            height: 317,
            fit: BoxFit.fill,
          ),
          Text(
            "Podkes",
            style: TextStyle(
                color: R.color.headColor,
                fontSize: 52,
                fontWeight: FontWeight.bold,
                fontFamily: R.fonts.poppins),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              textAlign: TextAlign.center,
              "A podcast is an episodic series of spoken word digital audio files that a user can download to a personal device for easy listening.",
              style: TextStyle(
                  color: R.color.txtColor, fontFamily: R.fonts.regular),
            ),
          ),
          Image.asset(
            R.drawable.png.gSPoints,
          ),
          const SizedBox(
            height: 60,
          ),
          SizedBox(
            height: 70,
            width: 70,
            child: FloatingActionButton(
              onPressed: () {
                Get.to(
                  () => const ExplorePage(),
                );
              },
              backgroundColor: Colors.white,
              child: const Icon(
                Icons.arrow_forward_rounded,
                color: Colors.black,
              ),
            ),
          )
        ],
      ),
    );
  }
}
