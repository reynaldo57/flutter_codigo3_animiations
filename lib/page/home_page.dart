import 'package:flutter/material.dart';
import 'package:flutter_codigo3_animations/page/hero_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("example"),
      ),
      body: Column(
        children: [
          Hero(
            tag: 'goku',
            child: Image.asset('assets/images/goku.jpg'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => HeroPage()));
            },
            child: Text("HereWeGo"),
          )
        ],
      ),
    );
  }
}
