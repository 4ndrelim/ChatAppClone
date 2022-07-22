import 'package:flutter/material.dart';
import '../widgets/chat_texts.dart';
import '../widgets/contacts_list.dart';
import '../widgets/web_chat_appbar.dart';
import '../widgets/web_profile_bar.dart';
import '../colours.dart';
import '../widgets/web_search_bar.dart';
import '../info.dart';

class WebScreenLayout extends StatefulWidget {
  const WebScreenLayout({Key? key}) : super(key: key);

  @override
  State<WebScreenLayout> createState() => WebScreenLayoutState();
}

class WebScreenLayoutState extends State<WebScreenLayout> {
  int _uid = 0;

  void changeUID(int newUID) {
    setState(() {
      _uid = newUID;
    });
  }

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
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: info.length,
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            InkWell(
                              // ! make shit appears to be clickable (touch ripples)
                              onTap: () {
                                changeUID(index);
                              },
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    top: 8.0, bottom: 8.0, right: 8.0),
                                child: ListTile(
                                  // tiles containing user avatars and messages
                                  leading: CircleAvatar(
                                    backgroundImage: AssetImage(
                                      info[index]['profilePic'].toString(),
                                    ),
                                    radius: 30,
                                  ),
                                  title: Text(
                                    // * users' names
                                    overflow: TextOverflow.ellipsis,
                                    info[index]['name'].toString(),
                                    style: const TextStyle(
                                      fontSize: 18,
                                    ),
                                  ),
                                  subtitle: Padding(
                                    // * last message sent/received
                                    padding: const EdgeInsets.only(top: 6),
                                    child: Text(
                                      overflow: TextOverflow.ellipsis,
                                      info[index]['message'].toString(),
                                      style: const TextStyle(
                                        fontSize: 15,
                                      ),
                                    ),
                                  ),
                                  trailing: Text(
                                    info[index]['time'].toString(),
                                    style: const TextStyle(
                                      fontSize: 12,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            const Divider(
                              color: dividerColor,
                              indent: 1,
                            ),
                          ],
                        );
                      },
                    ),
                  ),
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
                WebChatAppBar(userID: _uid),
                // Chat List
                Expanded(
                  child: ChatTexts(
                    userID: _uid,
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
