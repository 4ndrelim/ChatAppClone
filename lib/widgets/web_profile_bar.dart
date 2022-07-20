import 'package:flutter/material.dart';
import '../colours.dart';

class WebProfileBar extends StatelessWidget {
  const WebProfileBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // customizable
      height: MediaQuery.of(context).size.height * 0.077,
      // below no effect??
      width: MediaQuery.of(context).size.width * 0.25,
      padding: const EdgeInsets.all(10),
      decoration: const BoxDecoration(
        border: Border(
          right: BorderSide(
            color: dividerColor,
          ),
        ),
        color: webAppBarColor, // background color for profile bar
      ),
      child: Row(
        // interesting
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const CircleAvatar(
            backgroundImage: NetworkImage(
                'https://miro.medium.com/max/1400/1*2bjwCLaA8TfH40OXcyLNvA.png'),
            radius: 20,
          ),
          Row(
            children: [
              IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.comment, color: Colors.grey)),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.more_vert, color: Colors.grey)),
            ],
          ),
        ],
      ),
    );
  }
}
