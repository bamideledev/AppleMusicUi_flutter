import 'package:flutter/material.dart';

class Cardie extends StatelessWidget {
  final String name, cardnumber, expiry;
  final color;

  const Cardie(
      {Key? key,
      required this.name,
      required this.cardnumber,
      required this.expiry,
      required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.only(top: 48.0, left: 20, right: 20),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: color),
              height: 240,
              child: PageView(
                scrollDirection: Axis.horizontal,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 30.0, left: 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Virtual Banking Card',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 19,
                              fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          cardnumber,
                          style: TextStyle(
                              color: Colors.white.withOpacity(.45),
                              fontSize: 23,
                              fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 58.0),
                              child: Icon(
                                Icons.arrow_left,
                                size: 35,
                                color: Colors.white.withOpacity(.45),
                              ),
                            ),
                            Row(
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      'EXPIRY END OF:',
                                      style: TextStyle(
                                          fontSize: 7,
                                          color: Colors.white.withOpacity(.45)),
                                    ),
                                    Text(
                                      expiry,
                                      style: TextStyle(
                                          color: Colors.white.withOpacity(
                                            .45,
                                          ),
                                          fontWeight: FontWeight.w500),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0, right: 30),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                name,
                                style: TextStyle(
                                    color: Colors.white.withOpacity(.70)),
                              ),
                              Image.asset(
                                'lib/assests/visa.png',
                                height: 50,
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ]),
      ),
    );
  }
}
