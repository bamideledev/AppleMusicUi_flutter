

class WhatsAppChat {
  final String name, messages, image, time;
  final bool isActive;

  WhatsAppChat({
    required this.name,
    required this.messages,
    required this.image,
    required this.time,
    required this.isActive,
  });
}

List chatsData = [
  WhatsAppChat(
    name: 'Kelvin', 
    messages: 'How are you?',
    image: 'lib/assests/justin2.png', 
    time: '3m ago', 
    isActive: false,
    ),

    WhatsAppChat(
    name: 'Tutorial Group 2', 
    messages: '+44 7635 8735: Thanks?',
    image: 'lib/assests/justin3.jpeg', 
    time: '3m ago', 
    isActive: false,
    ),

    WhatsAppChat(
    name: 'Joshua Daven', 
    messages: 'Thanks?',
    image: 'lib/assests/justin4.jpeg', 
    time: '10m ago', 
    isActive: false,
    ),

    WhatsAppChat(
    name: 'Steve Giggs', 
    messages: 'Thanks?',
    image: 'lib/assests/justin5.jpeg', 
    time: '1m ago', 
    isActive: true,
    ),

    WhatsAppChat(
    name: 'Joy', 
    messages: 'How about a visitation this week, bring with you your siblings',
    image: 'lib/assests/justin6.jpeg', 
    time: '3m ago', 
    isActive: false,
    ),

    WhatsAppChat(
    name: 'Product HR', 
    messages: 'Pls deliver our project in time',
    image: 'lib/assests/justin7.png', 
    time: '15m ago', 
    isActive: true,
    ),

    WhatsAppChat(
    name: 'Justin Leon', 
    messages: 'Thanks?',
    image: 'lib/assests/justin.jpeg', 
    time: '35m ago', 
    isActive: false,
    ),

     WhatsAppChat(
    name: 'Product HR 2', 
    messages: 'Respond on my first line',
    image: 'lib/assests/justin7.png', 
    time: '15m ago', 
    isActive: false,
    ),


];
