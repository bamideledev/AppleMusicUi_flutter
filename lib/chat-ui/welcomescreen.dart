
import 'package:flutter/material.dart';
import 'package:flutter_demo/chat-ui/signinorsignup.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Column(
        children: [
          Spacer(flex: 2,),
          Image.asset('lib/assests/networking.png',),
          Spacer(flex: 3,),
        Text('Welcome to our social \nfreedom chat app',
        textAlign: TextAlign.center,
        style: Theme.of(context)
        .textTheme
        .headline5!
        .copyWith(fontWeight: FontWeight.bold),
        ),
        Spacer(),
        Text('Chat your friends by texts, voice calls \nand video calls',
        textAlign: TextAlign.center,
        style: TextStyle(color: Theme.of(context).textTheme.bodyText1
        ?.color
        ?.withOpacity(0.64)),
        ),
        Spacer(flex: 3,),
        FittedBox(
          child: TextButton(onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => SigninOrSignup(),)), child: Row(children: [
            Text('Skip',
            style: Theme.of(context).textTheme.bodyText1?.copyWith(color: Theme.of(context).textTheme.bodyText1?.color?.withOpacity(0.8)),),
            SizedBox(width: 10,),
            Icon(Icons.arrow_forward_ios,
            size: 16,
            color: Theme.of(context)
            .textTheme
            .bodyText1
            ?.color
            ?.withOpacity(0.8),)
          ],)),
        )
        ],
      )),
    );
  }
}