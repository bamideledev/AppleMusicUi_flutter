import 'package:flutter/material.dart';
import 'package:flutter_demo/chat-ui/body.dart';
import 'package:flutter_demo/whatsappChat_Ui/paste.dart';

class WhatsAppUi extends StatefulWidget {
  WhatsAppUi({Key? key}) : super(key: key);

  @override
  State<WhatsAppUi> createState() => _WhatsAppUiState();
}

class _WhatsAppUiState extends State<WhatsAppUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black45,
      appBar: buildAppBar() ,
      body: Column(
        children: [
           SizedBox( height: 10,),
        Expanded(child: ListView.builder(
          
          itemCount: chatsData.length,
          itemBuilder: (context, index) => ChatCard(chat: chatsData[index],press: (){},),))
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.green,
        child: Icon(
          Icons.messenger,
        ),
      ),
    );
  }
}




class ChatCard extends StatelessWidget {
  const ChatCard({
    Key? key,
     required this.chat,
     required this.press,
  }) : super(key: key);
  final WhatsAppChat chat;
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
                Text(chat.name, style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Colors.white),
                ),
                SizedBox(height: 8,),
                
                Opacity(
                  opacity: 0.69,
                  child: Text(chat.messages, maxLines: 1, overflow: TextOverflow.ellipsis, style: TextStyle(color: Colors.grey),))
              ],
            ),
          ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom:20.0),
            child: Opacity(
              opacity: 0.64,
              child: Text(chat.time, style: TextStyle(color: Colors.grey),)),
          )
          ],
          
        ),
      ),
    );
  }
}

 AppBar buildAppBar() {
    return AppBar(
      toolbarHeight: 110,
      backgroundColor: Color.fromARGB(248, 28, 26, 26),
      title: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('WhatsApp', style: TextStyle( color: Colors.grey, fontSize: 25),),
              Row(
                children: [
                  IconButton(onPressed: () {}, icon: Icon(Icons.search, color: Colors.grey)),
                  IconButton(onPressed: () {}, icon: Icon(Icons.menu, color: Colors.grey,)),
                ],
              ),
            
            ],
          ),
          SizedBox( height: 15,),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(onPressed: (){}, icon: Icon(Icons.camera, color:Colors.grey ,)),
              Text('CHATS', style: TextStyle(color: Colors.grey, fontSize: 16),),
              Text('STATUS', style: TextStyle(color: Colors.grey, fontSize: 16),),
              Text('CALLS', style: TextStyle(color: Colors.grey, fontSize: 16),),
            ],
          ),
          SizedBox(height: 16,)
        ],
      ),
    );
  }


