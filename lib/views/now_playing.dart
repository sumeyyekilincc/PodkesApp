import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:podkes/resources/_r.dart';
import 'package:podkes/views/explore.dart';

class NowPlaying extends StatefulWidget {
  const NowPlaying({super.key});

  @override
  State<NowPlaying> createState() => _NowPlayingState();
}

class _NowPlayingState extends State<NowPlaying> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: R.color.bgColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(
          "Now Playing",
          style: TextStyle(
            fontFamily: R.fonts.inter,
            fontSize: 16,
            color: R.color.playingPageHeadColor,
            fontWeight: FontWeight.w700,
          ),
        ),
        leading: IconButton(
          iconSize: 40,
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const ExplorePage(),
              ),
            );
          },
          icon: Icon(
            Icons.chevron_left_outlined,
            color: R.color.playingPageIconColor,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 39, vertical: 39),
        child: Column(
          children: [
            Container(
              height: 280,
              width: 297,
              decoration: BoxDecoration(color: R.color.drewHaysBgColor),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Image.asset(
                  R.drawable.png.drewHays,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(13.0),
              child: SizedBox(
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "The missing 96 percent of the universe",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          color: R.color.playingPageSubHeadColor,
                          fontSize: 20,
                          fontFamily: R.fonts.inter,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Claire Malone",
                      style: TextStyle(
                        fontFamily: R.fonts.inter,
                        fontSize: 14,
                        color: R.color.playingPageAthNameColor,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.all(13.0),
              child: Image.asset(
                R.drawable.png.foo,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(13.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "24:32",
                    style: TextStyle(
                        fontFamily: R.fonts.inter,
                        fontSize: 14,
                        color: R.color.playingPageMinsColor),
                  ),
                  Text("34:00",
                      style: TextStyle(
                          fontFamily: R.fonts.inter,
                          fontSize: 14,
                          color: R.color.playingPageMinsColor))
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.skip_previous,
                  color: R.color.playingPageButtonColor,
                  size: 24,
                ),
                const SizedBox(width: 16),
                IconButton(
                    onPressed: () {},
                    icon: SvgPicture.asset("assets/images/play.svg")),
                const SizedBox(width: 16),
                Icon(
                  Icons.skip_next,
                  color: R.color.playingPageButtonColor,
                  size: 24,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
