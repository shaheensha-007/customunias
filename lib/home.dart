import 'package:customunias/tag.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title:Text ("custom cilper"),
      ),
      body: Center(
        child: Container(
          width: 800,
          height: 500,
          decoration: BoxDecoration(
            image: DecorationImage(image: NetworkImage("https://m.media-amazon.com/images/I/71a4ZQNqTiL._SL1500_.jpg"),
            fit: BoxFit.cover),
          ),
          child:ClipPath(
            clipper: Tag(),
            child: Container(
              color: Colors.blue,
            ),
          ) ,
        ),
      ),
    );
  }
}
