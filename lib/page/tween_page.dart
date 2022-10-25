
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
      // body: Center(
      //   child: TweenAnimationBuilder<Color?>(
      //     duration: Duration(milliseconds: 1200),
      //     tween: ColorTween(begin: Colors.redAccent, end: Colors.greenAccent),
      //     builder: (BuildContext context, value, _){
      //       print(value);
      //       return Container(
      //         width: 100,
      //         height: 100,
      //         color: value,
      //       );
      //     },
      //   ),
      // ),

      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          child: Column(
            children: [
              TweenAnimationBuilder<double?>(
                  tween: Tween(begin: 1, end: 0),
                  duration: Duration(milliseconds: 1000),
                  builder: (BuildContext context, value, _){
                    return Transform.translate(
                      offset: Offset(0, -100 * value!),
                      child: Text(
                      "Batman",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                      ),
                    );
                  })
            ],
          ),
        ),
      ),
    );
  }
}
