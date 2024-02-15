import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:podkes/resources/_r.dart';

class SearchField extends StatefulWidget {
  const SearchField({Key? key}) : super(key: key);

  @override
  SearchFieldState createState() => SearchFieldState();
}

class SearchFieldState extends State<SearchField> {
  final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: _searchController,
      decoration: InputDecoration(
        fillColor: R.color.textFieldColor,
        filled: true,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide.none,
        ),
        hintText: "Search",
        hintStyle: TextStyle(color: R.color.headColor.withOpacity(0.3)),
        suffixIcon: Transform.scale(
          scale: 0.4,
          child: SvgPicture.asset(
            "assets/images/search.svg",
            colorFilter: ColorFilter.mode(
              R.color.headColor.withOpacity(0.3),
              BlendMode.srcIn,
            ),
          ),
        ),
      ),
    );
  }
}
