// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_demo/money/cardmoney.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Money extends StatefulWidget {
  Money({Key? key}) : super(key: key);

  @override
  State<Money> createState() => _MoneyState();
}

class _MoneyState extends State<Money> {
  var controller;
  int _selectedIndex = 0;
  @override
  void initState() {
    controller = new PageController(viewportFraction: 0.8);
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        onTap: (value) {
          setState(() {
            _selectedIndex = value;
          });
        },
        selectedItemColor: Color.fromARGB(255, 54, 91, 179),
        unselectedItemColor: Colors.grey,

        // ignore: prefer_const_literals_to_create_immutables
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.send), label: 'Send'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Profile'),
        ],
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 300,
                child: PageView(
                  children: [
                    Cardie(
                      name: 'ADEYANJU TAOFEEK. A',
                      cardnumber: '5399-6737-1784-2567',
                      expiry: '0121',
                      color: Color.fromARGB(255, 54, 91, 179),
                    ),
                    Cardie(
                      name: 'OWEN MICK. A',
                      cardnumber: '5399-6942-4951-8657',
                      expiry: '0129',
                      color: Color.fromARGB(255, 16, 15, 11).withOpacity(.80),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              SmoothPageIndicator(
                  controller: controller,
                  count: 2,
                  effect: ExpandingDotsEffect(
                      activeDotColor:
                          Color.fromARGB(255, 54, 91, 179).withOpacity(.5),
                      dotWidth: 10)),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 100.0, right: 100.0),
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 54, 91, 179).withOpacity(.89),
                      borderRadius: BorderRadius.circular(100)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.send_to_mobile,
                        color: Colors.white.withOpacity(.80),
                      ),
                      Text(
                        'Top-Up',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 100.0, right: 100.0),
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(100),
                      border: Border.all(
                          width: 1, color: Color.fromARGB(255, 54, 91, 179))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.credit_card,
                        color:
                            Color.fromARGB(255, 54, 91, 179).withOpacity(.80),
                      ),
                      Text(
                        'Add Card',
                        style: TextStyle(
                            color: Color.fromARGB(255, 54, 91, 179)
                                .withOpacity(.89),
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Text(
                      'Transactions',
                      style: TextStyle(
                          color: Color.fromARGB(255, 54, 91, 179),
                          fontSize: 17),
                    ),
                    Text(
                      'Amount',
                      style: TextStyle(
                          color: Color.fromARGB(255, 54, 91, 179),
                          fontSize: 17),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CircleAvatar(
                          radius: 25,
                          backgroundColor: Colors.white,
                          backgroundImage: AssetImage(
                            'lib/assests/netflix.png',
                          ),
                        ),
                        Text(
                          'Purchase of Netflix Plan \nsuccessful',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w500),
                        ),
                        Text(
                          '-\$10',
                          style:
                              TextStyle(color: Colors.red[700], fontSize: 20),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CircleAvatar(
                          radius: 25,
                          backgroundColor: Colors.white,
                          backgroundImage: AssetImage(
                            'lib/assests/music.png',
                          ),
                        ),
                        Text(
                          'Purchase of Apple Music \nPlan successful',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w500),
                        ),
                        Text(
                          '-\$4',
                          style:
                              TextStyle(color: Colors.red[700], fontSize: 20),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CircleAvatar(
                          radius: 25,
                          backgroundColor: Colors.white,
                          backgroundImage: AssetImage(
                            'lib/assests/spotify.png',
                          ),
                        ),
                        Text(
                          'Purchase of Spotify Plan \nsuccessful',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w500),
                        ),
                        Text(
                          '-\$10',
                          style:
                              TextStyle(color: Colors.red[700], fontSize: 20),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CircleAvatar(
                          radius: 25,
                          backgroundColor: Colors.white,
                          backgroundImage: AssetImage(
                            'lib/assests/deposit.png',
                          ),
                        ),
                        Text(
                          'Top up Deposit succes- \nsful',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w500),
                        ),
                        Text(
                          '\$400',
                          style:
                              TextStyle(color: Colors.green[700], fontSize: 20),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CircleAvatar(
                          radius: 25,
                          backgroundColor: Colors.white,
                          backgroundImage: AssetImage(
                            'lib/assests/container.png',
                          ),
                        ),
                        Text(
                          'Amazon Cart Purchase',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w500),
                        ),
                        Text(
                          '-\$4',
                          style:
                              TextStyle(color: Colors.red[700], fontSize: 20),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
