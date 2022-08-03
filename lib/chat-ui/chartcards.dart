
class Chat {
  final String name, messages, image, time;
  final bool isActive;

  Chat({
    required this.name,
    required this.messages,
    required this.image,
    required this.time,
    required this.isActive,
  });
}

List chatsData = [
  Chat(
    name: 'Kelvin Smith', 
    messages: 'How are you?',
    image: 'lib/assests/justin2.png', 
    time: '3m ago', 
    isActive: false,
    ),

    Chat(
    name: 'Micheal Owen', 
    messages: 'Thanks?',
    image: 'lib/assests/justin3.jpeg', 
    time: '3m ago', 
    isActive: false,
    ),

    Chat(
    name: 'Joshua Daven', 
    messages: 'Thanks?',
    image: 'lib/assests/justin4.jpeg', 
    time: '10m ago', 
    isActive: false,
    ),

    Chat(
    name: 'Steve Giggs', 
    messages: 'Thanks?',
    image: 'lib/assests/justin5.jpeg', 
    time: '1m ago', 
    isActive: true,
    ),

    Chat(
    name: 'Mc Donald', 
    messages: 'Order Sent',
    image: 'lib/assests/justin6.jpeg', 
    time: '3m ago', 
    isActive: false,
    ),

    Chat(
    name: 'Product HR', 
    messages: 'Pls deliver our project in time',
    image: 'lib/assests/justin7.png', 
    time: '15m ago', 
    isActive: true,
    ),

    Chat(
    name: 'Justin Leon', 
    messages: 'Thanks?',
    image: 'lib/assests/justin.jpeg', 
    time: '35m ago', 
    isActive: false,
    ),


];


