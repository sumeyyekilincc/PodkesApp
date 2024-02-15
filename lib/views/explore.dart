import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:podkes/views/views.dart';
import 'package:podkes/views/widgets/elevated_button.dart';
import 'package:podkes/resources/_r.dart';
import 'package:podkes/views/widgets/search_field.dart';
import 'package:podkes/views/widgets/bottom_navigator.dart';
import 'package:podkes/views/widgets/sub_heading.dart';

class ExplorePage extends StatefulWidget {
  const ExplorePage({Key? key}) : super(key: key);

  @override
  State<ExplorePage> createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage> {
  int _currentIndex = 0;

  BottomWidgets bottomWidgets = BottomWidgets();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: R.color.bgColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () {},
          icon: SvgPicture.asset("assets/images/barButton.svg"),
        ),
        title: Text(
          "Podkes",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontFamily: R.fonts.poppins,
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: R.color.headColor,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset("assets/images/bellButton.svg"),
          )
        ],
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: SearchField(),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: ElevatedButtonWidgets(),
            ),
          ),
          const SubHeading(),
          const Views(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        items: bottomWidgets.bottomNavItems,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        backgroundColor: R.color.elevatedButtonBgColor,
      ),
    );
  }
}
