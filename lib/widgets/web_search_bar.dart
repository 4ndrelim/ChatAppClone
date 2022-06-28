import 'package:flutter/material.dart';
import 'package:whatsapp_clone/colours.dart';

class WebSearchBar extends StatelessWidget {
  const WebSearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.08,
      width: MediaQuery.of(context).size.width * 0.25,
      padding: const EdgeInsets.all(10),
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(color: dividerColor),
        ),
      ),
      child: TextField(
        decoration: InputDecoration(
          // to fill the color as specified in searchBarColor
          filled: true, // ! IMPORTANT !
          fillColor: searchBarColor,
          // add icon beside text in search bar
          prefixIcon: const Padding(
            // symmetric padding on both sides
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Icon(
              Icons.search,
              size: 20,
            ),
          ),
          hintStyle: const TextStyle(fontSize: 14),
          hintText: "Search or Start Chat",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: const BorderSide(
              width: 0,
              style: BorderStyle.none,
            ),
          ),
          // centralise text in the search bar
          contentPadding: const EdgeInsets.all(10),
        ),
      ),
    );
  }
}
