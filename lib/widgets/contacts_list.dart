import 'package:flutter/material.dart';
import '../info.dart';
import '../colours.dart';

class ContactsList extends StatelessWidget {
  const ContactsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Column(
        children: [
          ListView.builder(
            shrinkWrap: true,
            itemCount: info.length,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  InkWell(
                    // ! make shit appears to be clickable (touch ripples)
                    onTap: () {},
                    child: Padding(
                      padding: const EdgeInsets.only(
                          top: 8.0, bottom: 8.0, right: 8.0),
                      child: ListTile(
                        // tiles containing user avatars and messages
                        leading: CircleAvatar(
                          backgroundImage: NetworkImage(
                            info[index]['profilePic'].toString(),
                          ),
                          radius: 30,
                        ),
                        title: Text(
                          // * users' names
                          info[index]['name'].toString(),
                          style: const TextStyle(
                            fontSize: 18,
                          ),
                        ),
                        subtitle: Padding(
                          // * last message sent/received
                          padding: const EdgeInsets.only(top: 6),
                          child: Text(
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
        ],
      ),
    );
  }
}
