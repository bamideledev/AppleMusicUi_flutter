// ignore_for_file: prefer_const_constructors, duplicate_ignore

import 'package:flutter/material.dart';

class List extends StatelessWidget {
  final String iconImagePath;
  final String tileName;
  final String tileSubName;

  const List({
    Key? key,
    required this.iconImagePath,
    required this.tileName,
    required this.tileSubName,
    }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only( top: 20.0, bottom: 20.0),
      child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                 Row(children: [
                      // ignore: duplicate_ignore
                      Container(
                    height: 80,
                    // ignore: prefer_const_constructors
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.grey[100],
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Image.asset(iconImagePath),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    // ignore: prefer_const_literals_to_create_immutables
                    crossAxisAlignment: CrossAxisAlignment.start,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Text(
                        tileName,
                        style: TextStyle(fontWeight:FontWeight.bold,
                        fontSize: 20,
                        ),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        
                      Text(
                        tileSubName,
                         style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey[700],
                        ),
                        ),
                    ],
                    ),
                 ],
                 ),
                    Icon(Icons.arrow_forward_ios),
                ],
                ),
    );


  }
}