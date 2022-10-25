
import 'package:flutter/material.dart';

class TweenPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Example"
        ),
      ),
      body: Center(
        child: TweenAnimationBuilder<Color?>(
          duration: Duration(milliseconds: 1200),
          tween: ColorTween(begin: Colors.redAccent, end: Colors.greenAccent),
          builder: (BuildContext context, value, _){
            print(value);
            return Container(
              width: 100,
              height: 100,
              color: value,
            );
          },
        ),
      ),
    );
  }
}
