import 'package:flutter/material.dart';

class Dele extends StatelessWidget {
  const Dele({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 24, ),
      height: 220,
      width: 202,
      child: Stack(
        children: <Widget>[
          Container(
            height: 221,
            decoration: BoxDecoration(
                color: Colors.grey.withOpacity(.49),
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                      offset: Offset(0, 5),
                      blurRadius: 33,
                      color: Color(0xffd3d3d3).withOpacity(.84))
                ]),
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'lib/assests/kiss.png',
                      height: 140,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  right: 20.0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Icon(
                      Icons.star,
                      size: 17,
                    ),
                    Icon(
                      Icons.star,
                      size: 17,
                    ),
                    Icon(
                      Icons.star,
                      size: 17,
                    ),
                    Icon(
                      Icons.star_outline,
                      size: 17,
                    ),
                    Icon(
                      Icons.star_outline,
                  size: 17,
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 27, top: 5),
                child: Text('How Innovation works',
                style: TextStyle(fontSize: 12),
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 70, top: 5),
                child: Text('Mart Ridley')),
            ],
          )
        ],
      ),
    );
  }
}