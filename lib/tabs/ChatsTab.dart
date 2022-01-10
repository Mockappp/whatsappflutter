import 'package:flutter/material.dart';
import 'package:whatsapp_ui_clone/models/ChatListItem.dart';
import 'package:whatsapp_ui_clone/screens/ChatScreen.dart';

class ChatsTab extends StatelessWidget {

  final List<ChatListItem> chatListItems = [
    ChatListItem(
      profileURL:
      "assets/1.jpg",
      personName:
      "Oussema",
      date:
      "9:10 am",
      lastMessage:
      "Hello !"
    ),
    ChatListItem(
      profileURL:
      "assets/2.jpg",
      personName: "Saif",
      date: "10:10 am",
      lastMessage: "How are u ??"
    ),
    ChatListItem(
      profileURL:
 "assets/3.jpg",
      personName:
      "Baha",
      date:
      "11:10 am",
      lastMessage:
      "We can go out"
    ),
    ChatListItem(
      profileURL:
      "assets/4.jpg",
      personName:
      "Mohamed",
      date:
      "14:10",
      lastMessage: "Time for Gym"
    ),
    ChatListItem(
      profileURL:
      "assets/5.jpg",
      personName: "Borhene",
      date: "15:30",
      lastMessage:
      "I'm coming "
    ),
    ChatListItem(
      profileURL:
      "assets/6.jpg",
      personName:
      "Ayoub",
      date:
      "17:00",
      lastMessage:
      "Ta7t lguantra"
    ),
    ChatListItem(
      profileURL:
      "assets/7.jpg",
        personName:
        "Ramzi",
      date:
      "17:00",
      lastMessage:
      "Fst gtrhrz "
    ),
    ChatListItem(
      profileURL:
      "assets/8.jpg",
        personName:
        "bilel",
      date:
      "20:00",
      lastMessage:
      "beatae quasi sed"
    ),

  ];

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: chatListItems.length,
      separatorBuilder: (ctx, i) {
        return  Divider();
      },
      itemBuilder: (ctx, i) {
        return ListTile(
          title: Text
           (chatListItems[i].personName),
          subtitle:
            Text(chatListItems[i].lastMessage),
          trailing:Text(chatListItems[i].date),
          leading:
         CircleAvatar(
            backgroundColor: Colors.grey,
            backgroundImage: NetworkImage(
              chatListItems[i].profileURL
            ),
          ),
          onTap: () {
            Navigator.push(
              context, 
              MaterialPageRoute(
                builder: (context) => ChatScreen(
                  person: chatListItems[i], 
                ),
              ),
            );
          },
        );
      },
    );
    
  }
}