
import 'package:flutter/material.dart';

class AnimatedControllerPage extends StatefulWidget {

  @override
  _AnimatedControllerPageState createState() => _AnimatedControllerPageState();
}

class _AnimatedControllerPageState extends State<AnimatedControllerPage> with SingleTickerProviderStateMixin {

  late AnimationController _colorAnimationController;
  late Animation _colorAnimation;
  bool isFav = false;
  @override
  void initState(){
    super.initState();

    _colorAnimationController = AnimationController(duration: Duration(milliseconds: 1600), vsync: this);
    _colorAnimation = ColorTween(begin: Colors.blue, end: Colors.redAccent).animate(_colorAnimationController);
    _colorAnimationController.forward();
    
    _colorAnimationController.addListener(() {
      print(_colorAnimation.value);
    });
    _colorAnimationController.addStatusListener((status){
      if(status == AnimationStatus.completed){
        isFav = true;
        setState(() {

        });
      } else if(status == AnimationStatus.dismissed){
        isFav = false;
        setState(() {

        });
      }
      print(status);
    });
  }
  @override
  void dispose(){
    // TODO: implement dispose
    super.dispose();
    _colorAnimationController.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Example"),
      ),
      body: Center(
        child: AnimatedBuilder(
          animation: _colorAnimation,
          builder: (BuildContext context, _){
            print(_colorAnimation.value);
            return IconButton(
              onPressed: (){
                isFav ? _colorAnimationController.reverse() : _colorAnimationController.forward();
              },
              icon: Icon(
                Icons.favorite,
                size: 40,
                color: _colorAnimation.value,
              ),
            );
          }
        )
      ),
    );
  }
}
