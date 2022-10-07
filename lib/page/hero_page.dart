import 'package:flutter/material.dart';

class HeroPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HeroPage"),
      ),
      body: Center(
        child: Hero(
          tag: 'goku',
          child: Image.asset('assets/images/goku.jpg',
          height: 200,),
        ),
      ),
    );
  }
}
