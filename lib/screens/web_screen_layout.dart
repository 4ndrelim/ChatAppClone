import 'package:flutter/material.dart';
import 'package:whatsapp_clone/widgets/contacts_list.dart';
import 'package:whatsapp_clone/widgets/web_chat_appbar.dart';
import 'package:whatsapp_clone/widgets/web_profile_bar.dart';
import '../widgets/web_search_bar.dart';

class WebScreenLayout extends StatelessWidget {
  const WebScreenLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        // What effect does the below have???
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            // ! expands [ContactList] so that it fills the remaining 1/4 of the screen
            // * scroll view
            child: SingleChildScrollView(
              child: Column(
                children: [
                  WebProfileBar(),
                  WebSearchBar(),
                  ContactsList(),
                ],
              ),
            ),
          ),
          // TODO: message screen
          Container(
            width: MediaQuery.of(context).size.width *
                0.75, // ! three-quarters of screen is taken up by message widget
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/backgroundImage.png'),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              children: [
                // Chat App Bar
                WebChatAppBar(),
                // Chat List
                // Message Input Box
              ],
            ),
          ),
        ],
      ),
    );
  }
}
