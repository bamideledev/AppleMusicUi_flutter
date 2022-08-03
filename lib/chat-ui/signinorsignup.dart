// ignore_for_file: deprecated_member_use


import 'package:flutter/material.dart';
import 'package:flutter_demo/chat-ui/chat.dart';

class SigninOrSignup extends StatelessWidget {
  const SigninOrSignup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Column(
        children: [
          Spacer(flex: 2,),
          Image.asset('lib/assests/chat.png', 
          height: 140,
          ),
          SizedBox( height: 3,),
          Text('Social Chat', style: TextStyle(fontWeight: FontWeight.w600,
          fontSize: 20),),
          Spacer(flex: 1,),
          Center(
            child: SizedBox(
              width: 400,
              height: 45,
              child: RaisedButton(
                onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => ChatApp(),)), 
                child: Text('Sign in', 
                style: TextStyle(color: Colors.white),),
              color: Colors.green,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
              
              ),
              ),
          ),
          
           SizedBox(height: 25,),
             SizedBox(
            width: 400,
            height: 45,
            child: RaisedButton(onPressed: () {},
             child: Text('Sign up',
             style: TextStyle(color: Colors.white),),
             color: Colors.orange,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
            
            ),
            ),
            Spacer(flex: 2,),
        ],
      )),
    );
  }
}