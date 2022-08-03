// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:flutter_demo/utilites/list.dart';

class Login extends StatefulWidget {
  // ignore: prefer_const_constructors_in_immutables
  Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      bottomNavigationBar: BottomAppBar(
        color: Colors.grey[100],
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              onPressed: (){}, 
              icon: Icon(
                Icons.chat,
                size: 25,
                color: Colors.indigo,
                ),
                ),
                
                IconButton(
              onPressed: (){}, 
              icon: Icon(
                Icons.verified_user, 
                size: 25,
                color: Colors.grey[600],
                ),
                ),

                IconButton(
              onPressed: (){}, 
              icon: Icon(
                Icons.mail, size: 25,
                color: Colors.grey[600],
                ),
                ),
          ],
        )
         ),
      body: SafeArea(
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.only(top: 30.0, left: 12.0),
            child: Row(
              children: [
               Image.asset('lib/assests/chat.png', height: 40,),
               Text('Social Chat',
               style: TextStyle(fontSize: 25,
               color: Colors.indigo,
               fontWeight: FontWeight.bold,
               ),
               ),
              ],
            ),
          ),
          SizedBox(height: 30,),
          Padding(
            padding: const EdgeInsets.only(left:12.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              Text('Begin texting',
              style: TextStyle(fontSize: 22,
              color: Colors.grey[700],
              ),
              ),
            ],
            ),
          ),
          SizedBox(height: 12,),
          Padding(
            padding: const EdgeInsets.only(left: 12.0),
            child: Row(children: [
              Text('your loved',
              style: TextStyle(fontSize: 22,
                color: Colors.grey[700],
                ),
              )
            ],),
          ),

           SizedBox(height: 12,),
          Padding(
            padding: const EdgeInsets.only(left: 12.0),
            child: Row(children: [
              Text('ones',
              style: TextStyle(fontSize: 22,
                color: Colors.grey[700],
                ),
              )
            ],
            ),
          ),
          SizedBox(height: 30,),

          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left:12.0),
                child: SizedBox(
                  width: 170,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: (){},
                    // ignore: sort_child_properties_last
                    child: Text('Chat now',
                    style: TextStyle(fontSize: 17),
                    ),
                    style:ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(Colors.indigo,)
                    )
                    ),
                    ),
              ),
            ],
          ),
          SizedBox(height: 30,),

          Padding(
            padding: const EdgeInsets.only(left:60.0),
            child: Row(
              
              children: [
                Container(
                  child: Icon(Icons.arrow_circle_right_outlined,
                  ),
                  
                ),
                 Container(
                  child: Icon(Icons.arrow_circle_right_outlined,
                  ),
                ),
                 Container(
                  child: Icon(Icons.arrow_circle_right_outlined,
                  ),
                ),
                
              ],
            ),
          ),

          SizedBox( height: 35,),

          Container(
            child: Padding(
              padding: const EdgeInsets.only(right:12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                 // Container(
                   // height: 100,
                  //  width: 100,
                  //  decoration: BoxDecoration(
                   //   color: Colors.green,
                   //   shape: BoxShape.rectangle,
                  //    borderRadius: BorderRadius.circular(40)
                   // ),
                  //),
                 Image.asset('lib/assests/group.png', height: 170,),
                ],
              ),
            ),
          ),
          SizedBox(height: 55,),

          Container(
            child: Text('Available on',
            style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500,
            color: Colors.indigo[700]
            ),
            
            ),
          ),
          SizedBox(height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                 
                  Image.asset('lib/assests/playstore.png', height: 50,),
                ],
              ),
              Column(
                children: [
                  Image.asset('lib/assests/app-store.png', height: 50,),
                ],
              ),
          ],),
          SizedBox(height: 20,),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
             Text('Playstore',
                  style: TextStyle(fontSize: 17, ),
                  ),
             Text('App store',
                  style: TextStyle(fontSize: 17, ),
                  ),
          ],
          ),
          SizedBox(
            height: 22,),

        ],
        ),
        ),
    );
  }
}

//class TriangularClipper extends CustomClipper<Path> {

  //@override
  //Path getClip (Size size) {
   // final path = Path();
  //  path.moveTo(size.width/2, 0.0);
  //  path.lineTo(size.width, size.height);
  //  path.lineTo(0.0, size.height);
  //  path.close();
 //   return path;
 // }

 // @override
 // bool shouldReclip(CustomClipper<Path> oldClipper) => false;
//}