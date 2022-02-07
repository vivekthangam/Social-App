import 'package:Social/components/filled_outline_button.dart';
import 'package:Social/models/Chat.dart';
import 'package:Social/pages/Chat/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'ChatConstant.dart';
import 'chartCard.dart';

class ChatApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.fromLTRB(
                kDefaultPadding, 0, kDefaultPadding, kDefaultPadding),
            color: kPrimaryColor,
            child: Row(
              children: [
                FillOutlineButton(press: () {}, text: "Recent Message"),
                SizedBox(width: kDefaultPadding),
                FillOutlineButton(
                  press: () {},
                  text: "Active",
                  isFilled: false,
                ),
              ],
            ),
          ),
          Expanded(
              child: ListView.builder(
                  itemCount: chatsData.length,
                  itemBuilder: (context, index) =>
                      ChatCard(chat: chatsData[index], press: () {})))
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: kPrimaryColor,
        child: Icon(Icons.person_add_alt_1),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.people), label: "People"),
          BottomNavigationBarItem(icon: Icon(Icons.call), label: "Calls"),
          BottomNavigationBarItem(
              icon: CircleAvatar(
                backgroundImage: AssetImage("assets/images/user_2.png"),
              ),
              label: "Profile"),
        ],
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
        backgroundColor: kPrimaryColor,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: Text("Chat"),
        actions: [IconButton(icon: Icon(Icons.search), onPressed: () {})]);
  }
}
