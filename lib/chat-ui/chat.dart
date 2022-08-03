// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_demo/chat-ui/body.dart';

class ChatApp extends StatefulWidget {
  const ChatApp({Key? key}) : super(key: key);

  @override
  State<ChatApp> createState() => _ChatAppState();
}

class _ChatAppState extends State<ChatApp> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.green,
        child: Icon(
          Icons.person_add_alt_1,
        ),
      ),
      // ignore: prefer_const_literals_to_create_immutables
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        onTap: (value) {
          setState(() {
            _selectedIndex = value;
          });
        },
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
        
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.messenger), label: 'Chat'),
          BottomNavigationBarItem(icon: Icon(Icons.people), label: 'People'),
          BottomNavigationBarItem(icon: Icon(Icons.call), label: 'Calls'),
          BottomNavigationBarItem(
              icon: CircleAvatar(
                backgroundImage: AssetImage('lib/assests/justin.jpeg'),
              ),
              label: 'Profile'),
        ],
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Colors.green,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('Chats'),
          IconButton(onPressed: () {}, icon: Icon(Icons.search))
        ],
      ),
    );
  }
}
