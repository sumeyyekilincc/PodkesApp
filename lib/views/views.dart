import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:podkes/views/now_playing.dart';

class Views extends StatefulWidget {
  const Views({Key? key}) : super(key: key);

  @override
  State<Views> createState() => _ViewsState();
}

class _ViewsState extends State<Views> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: GridView.builder(
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 7,
          crossAxisSpacing: 12,
          childAspectRatio: 0.8,
        ),
        itemBuilder: (BuildContext context, int index) {
          String imagePath;
          String title;
          String text;

          switch (index % 4) {
            case 0:
              imagePath = 'assets/images/2.png';
              title = 'The missing 96 percent of the universe';
              text = 'Claire Malone';
              break;
            case 1:
              imagePath = 'assets/images/1.png';
              title = 'How Dolly Parton led me to an epiphany';
              text = 'Abumenyang';
              break;
            case 2:
              imagePath = 'assets/images/4.png';
              title = 'The missing 96 percent of the universe';
              text = 'Tir McDohl';
              break;
            case 3:
              imagePath = 'assets/images/3.png';
              title = 'Ngobam with Denny Caknan';
              text = 'Denny Kulon';
              break;
            default:
              imagePath = '';
              title = '';
              text = '';
              break;
          }

          return InkWell(
            onTap: index == 0
                ? () {
                    Get.to(
                      () => const NowPlaying(),
                    );
                  }
                : null,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(5.0),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width / 5,
                    height: MediaQuery.of(context).size.height / 5,
                    child: Image.asset(
                      imagePath,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Expanded(
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width / 5,
                    height: MediaQuery.of(context).size.height / 5,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          title,
                          textAlign: TextAlign.start,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                          style: const TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          text,
                          textAlign: TextAlign.start,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                          style: const TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.normal,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        },
        itemCount: 4,
      ),
    );
  }
}
