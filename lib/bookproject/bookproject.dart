// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_demo/bookproject/newbook.dart';
import 'package:flutter_demo/bookproject/thebooks.dart';

class BookApp extends StatefulWidget {
  BookApp({Key? key}) : super(key: key);

  @override
  State<BookApp> createState() => _BookAppState();
}

class _BookAppState extends State<BookApp> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              onPressed: (){}, 
              icon: Icon(Icons.bookmark_add,
              size: 30,
              ),
              
              ),
            IconButton(onPressed: (){}, icon: Icon(Icons.play_arrow,
            size: 30,
            color: Colors.black.withOpacity(.60),
            )),
            IconButton(onPressed: (){}, icon: Icon(Icons.download_for_offline,
            size: 30,
            color: Colors.black.withOpacity(.60),
            )),
          ],
        ) ),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 1.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'Read',
                style: TextStyle(color: Colors.black),
              ),
              Text(
                'Books',
                style: TextStyle(color: Colors.grey),
              ),
            ],
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 27.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Image.asset(
                  'lib/assests/profile.png',
                  height: 35,
                ),
              ],
            ),
          )
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 30.0, horizontal: 20.0),
                child: Row(
                  children: [
                    Text(
                      'Favourites',
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 1,
              ),
              
        
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Padding(
                    padding: const EdgeInsets.only(left:0, right: 1.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Dele( 
                        ),
                        TheBooks(
                        ),
                        TheBooks(
                        ),
                        TheBooks(
                        ),
                       
                      ],
                    ),
                  ),
                ),
              
              SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.only(left:30),
                    child: Text(
                      'Top Rated',
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30,),
        
               SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Padding(
                    padding: const EdgeInsets.only(left:0, right: 1.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        TheBooks(
        
                        ),
                        Dele(
                        ),
                        TheBooks(
                        ),
                        TheBooks(
                        ),
                       
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 30,),
                  Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.only(left:30),
                    child: Text(
                      'Because you read: ',
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                    ),
                  ),
                ],
              ),
                 SizedBox(height: 30,),
        
               SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Padding(
                    padding: const EdgeInsets.only(left:0, right: 1.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        TheBooks(
        
                        ),
                        Dele(
                        ),
                        TheBooks(
                        ),
                        TheBooks(
                        ),
                       
                      ],
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
