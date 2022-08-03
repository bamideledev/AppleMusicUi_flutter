// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_demo/utilites/list.dart';
import 'package:flutter_demo/utilites/my-button.dart';
import 'package:flutter_demo/utilites/my_cards.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';


class HomePage extends StatefulWidget {
  // ignore: prefer_const_constructors_in_immutables
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  //pageController
  final _controller  = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.green,
        child: Icon(
          Icons.monetization_on_rounded,
          size: 30,
          ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar:  BottomAppBar(
        color: Colors.grey[200],
        child: Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                onPressed: () {}, 
                icon: Icon(
                  Icons.home,
                  size: 30,
                  color: Colors.green[200],
                  ),
                ),
              IconButton(
                onPressed: () {}, 
                icon: Icon(
                  Icons.settings,
                  size: 30,
                  color: Colors.grey,
                  ),
                ),
            ],
          ),
        ) ,
      ),
      body: SafeArea(
        child: Column(children:[
          //app bar
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // ignore: prefer_const_literals_to_create_immutables
                Row(children:[
                    Text(
                    "My",
                    style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    ),
                    ),
                     Text(
                    "Cards",
                    style: TextStyle(fontSize: 28),
                    ),
                  ],
                ),

               //plus button
               Container(
                 padding: EdgeInsets.all(8),
                 decoration: BoxDecoration(
                   color: Colors.grey[400],
                   shape: BoxShape.circle,
                 ),
                 child: Icon(Icons.add)),
              ],
            ),
          ),

          SizedBox(height: 25),

          //cards
          Container(
            height: 200,
            child: PageView(
              scrollDirection: Axis.horizontal,
              controller: _controller,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                MyCard(
                  balance: 5290.05,
                  cardNumber: 53996563,
                  expiryMonth: 10,
                  expiryYear: 25,
                  color: Colors.green[400],
                ),
                MyCard(
                  balance: 4220.00,
                  cardNumber: 53996563,
                  expiryMonth: 11,
                  expiryYear: 25,
                  color: Colors.deepPurple[400],
                ),
                 MyCard(
                  balance: 420.05,
                  cardNumber: 53996563,
                  expiryMonth: 10,
                  expiryYear: 23,
                  color: Colors.blue[400],
                ),
              ],
            ),
          ),
          SizedBox(height: 20,),
          SmoothPageIndicator(
            controller: _controller, 
            count:3,
            effect: ExpandingDotsEffect(
              activeDotColor: Colors.grey.shade700,
            ),
          ),

          SizedBox(height: 50,
          ),
          // 3 buttons => send + pay + bills

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                //send button
                MyButton(iconImagePath: 'lib/assests/send-money.png', 
                buttonText: 'Send',
                ),

                //pay button
                 MyButton(iconImagePath: 'lib/assests/pay-per-click.png', 
                buttonText: 'Pay',
                ),

                //bills button
                 MyButton(iconImagePath: 'lib/assests/invoice.png', 
                buttonText: 'Bills',
                ),
              ],
            ),
          ),

          //column stats
          SizedBox(height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
              children: [
              //statistics
              List(
                iconImagePath: 'lib/assests/analysis-2.png', 
                tileName: 'Statistics', 
                tileSubName: 'Payments and income',
                ),
              // transactions
               List(
                iconImagePath: 'lib/assests/credit-card.png', 
                tileName: 'Credit', 
                tileSubName: 'Online Card Transaction',
                ),
            ],
            ),
          )


        ],
        ),
      ),
    );
  }
}
         