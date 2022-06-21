import 'package:flutter/material.dart';
import '../colours.dart';

class MobileScreenLayout extends StatelessWidget {
  const MobileScreenLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3, // number of tabs
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: appBarColor,
          elevation: 0,
          title: const Text(
            "WhatsApp",
            style: TextStyle(
              color: Color.fromARGB(255, 138, 255, 239),
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: false,
          actions: [
            IconButton(
              color: Color.fromARGB(255, 138, 255, 239),
              onPressed: () {},
              icon: Icon(
                Icons.search,
                // can add color
              ),
            ),
            IconButton(
              color: Color.fromARGB(255, 138, 255, 239),
              onPressed: () {},
              icon: Icon(Icons.more_vert),
              // can add color
            ),
          ],
          bottom: const TabBar(
            indicatorColor: tabColor,
            indicatorWeight: 4,
            unselectedLabelColor: Color.fromARGB(255, 158, 156, 156),
            labelStyle: TextStyle(
              fontWeight: FontWeight.bold,
            ),
            tabs: [
              // accepts list of tabs
              Tab(
                text: "CHATS",
              ),
              Tab(
                text: "STATUS",
              ),
              Tab(
                text: "CALLS",
              ),
            ],
          ),
        ),
        body: const Center(
          child: Text(
            'Hello Deon, this is mobile',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontStyle: FontStyle.italic,
            ),
          ),
        ),
      ),
    );
  }
}
