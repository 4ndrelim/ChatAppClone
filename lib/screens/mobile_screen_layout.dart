import 'package:flutter/material.dart';
import '../colours.dart';
import '../widgets/contacts_list.dart';

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
          title: Padding(
            padding: const EdgeInsets.fromLTRB(42.0, 16.0, 0.0, 0.0),
            child: Row(
              children: const [
                Text(
                  "MyApp",
                  style: TextStyle(
                    color: appBarTextColor,
                    fontSize: 28,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ],
            ),
          ),
          centerTitle: false,
          actions: [
            const Padding(
              padding: EdgeInsets.fromLTRB(0.0, 16.0, 12.0, 0.0),
              child: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://miro.medium.com/max/1400/1*2bjwCLaA8TfH40OXcyLNvA.png'),
                radius: 24,
              ),
            ),
            IconButton(
              color: appBarTextColor,
              onPressed: () {},
              icon: const Icon(
                Icons.search,
                // can add color
              ),
            ),
            IconButton(
              color: appBarTextColor,
              onPressed: () {},
              icon: const Icon(Icons.more_vert),
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
        body: const ContactsList(),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: commentColor,
          child: const Icon(
            Icons.comment,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
