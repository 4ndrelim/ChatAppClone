import 'package:flutter/material.dart';
import '../widgets/chat_texts.dart';
import '../widgets/contacts_list.dart';
import '../widgets/web_chat_appbar.dart';
import '../widgets/web_profile_bar.dart';
import '../colours.dart';
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
                Expanded(
                  child: ChatTexts(
                    userID: 0,
                  ),
                ),
                // Message Input Box
                Container(
                  height: MediaQuery.of(context).size.height * 0.07,
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  decoration: const BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: dividerColor,
                      ),
                    ),
                    color: chatBarMessage,
                  ),
                  child: Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.emoji_emotions_outlined),
                        color: Colors.grey,
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.attach_file),
                        color: Colors.grey,
                      ),
                      // ! Important to add Expanded for TextField !
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(
                            left: 10,
                            right: 15,
                            top: 6,
                            bottom: 6,
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: searchBarColor,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: const BorderSide(
                                  width: 0,
                                  style: BorderStyle.none,
                                ),
                              ),
                              hintText: 'Type a message ...',
                              contentPadding: const EdgeInsets.only(left: 20),
                            ),
                          ),
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.send),
                        color: Colors.grey,
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.mic),
                        color: Colors.grey,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
