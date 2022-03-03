import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TurkishFlag(g: 200),
    );
  }
}

class TurkishFlag extends StatelessWidget {
  final double g;

  TurkishFlag({required this.g});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        children: <Widget>[
          Container(
            height: g,
            width: g * 1.5,
            color: Colors.red,
          ),
          Positioned(
            top: 0.25*g,
            left: 0.25*g,
            child: Container(
              width: 0.5*g,
              height: 0.5*g,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
              ),
            ),
          ),
          Positioned(
            top: 0.3*g,
            left: 0.3625*g,
            child: Container(
              width: 0.4*g,
              height: 0.4*g,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.red,
              ),
            ),
          ),
          Positioned(
            top: 0.375*g,
            left: 0.7*g,
            child: Container(
              child: Icon(
                Icons.star,
                size: g * 0.25,
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
    );
  }
}
