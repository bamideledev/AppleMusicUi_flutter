import 'package:flutter/material.dart';
import 'package:flutter_demo/chat-ui/chartcards.dart';


class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.only(top: 20, left: 10),
          child: Row(
            children: [ 
              SizedBox( width: 150,
              height: 40,
              child: RaisedButton(
                onPressed: () {},
                child: Text('Recent Chats', 
                style: TextStyle(color: Colors.white),),
              color: Colors.green,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
              
              ),),
              SizedBox( width: 10,),
               SizedBox( width: 100,
              height: 40,
              child: RaisedButton(
                elevation: null,
                onPressed: () {},
                child: Text('Active', 
                style: TextStyle(color: Colors.green),),
              color: Colors.white,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20)),
               side: BorderSide(color: Colors.green)),
              
              ),),
            ],
          ),
        ),
        SizedBox( height: 10,),
        Expanded(child: ListView.builder(
          itemCount: chatsData.length,
          itemBuilder: (context, index) => ChatsCard(chat: chatsData[index],press: (){},),))
      ],
    );
  }
}

class ChatsCard extends StatelessWidget {
  const ChatsCard({
    Key? key,
     required this.chat,
     required this.press,
  }) : super(key: key);
  final Chat chat;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal:20.0, vertical: 26.0),
        child: Row(
          children: [
            Stack(
              children: [
                CircleAvatar(
                radius: 24,
                backgroundImage: AssetImage(chat.image),
                ),
                if (chat.isActive)
                Positioned(
                  right: 0,
                  bottom: 0,
                  child: Container(
                    height: 16, 
                    width: 16,
                    decoration: BoxDecoration(color: Colors.green,
                    shape: BoxShape.circle,
                    border: Border.all(color: Theme.of(context).scaffoldBackgroundColor, width: 3)),
                  ),
                )
    
              ],
            ),
          Expanded(child: Padding(
            padding: const EdgeInsets.symmetric(horizontal:25.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(chat.name, style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
                SizedBox(height: 8,),
                
                Opacity(
                  opacity: 0.69,
                  child: Text(chat.messages, maxLines: 1, overflow: TextOverflow.ellipsis,))
              ],
            ),
          ),
          ),
          Opacity(
            opacity: 0.64,
            child: Text(chat.time))
          ],
          
        ),
      ),
    );
  }
}