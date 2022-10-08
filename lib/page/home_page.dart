import 'package:flutter/material.dart';
import 'package:flutter_codigo3_animations/page/hero_page.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  bool flagAnimAlign = true;
  bool flagAnimContainer = true;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("example"),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 40
            ),
            // Hero(
            //   tag: 'goku',
            //   child: Image.asset('assets/images/goku.jpg'),
            // ),
            // ElevatedButton(
            //   onPressed: () {
            //     Navigator.push(
            //         context, MaterialPageRoute(builder: (context) => HeroPage()));
            //   },
            //   child: Text("HereWeGo"),
            // )
            // GestureDetector(
            //   onTap: (){
            //     flagAnimAlign = !flagAnimAlign;
            //     setState(() {
            //
            //     });
            //   },
            //   child: Container(
            //     width: 250,
            //     height: 250,
            //     color: Colors.greenAccent,
            //     child: AnimatedAlign(
            //       duration: Duration(milliseconds: 1500),
            //       alignment: flagAnimAlign ? Alignment.topRight : Alignment.bottomLeft,
            //       curve: Curves.bounceOut,
            //       child: Image.asset("assets/images/goku.jpg", height: 100,),
            //     ),
            //   ),
            // ),

            GestureDetector(
              onTap: (){
                setState(() {
                  flagAnimContainer = !flagAnimContainer;
                });
              },
              child: AnimatedContainer(
                duration: Duration(milliseconds: 1400),
                height: flagAnimContainer ? 200 : 100,
                width: flagAnimContainer ? 200 : 100,
                color: Colors.greenAccent,
                child: FlutterLogo(size: 60,),
                curve: Curves.bounceOut,
                alignment: flagAnimContainer ? Alignment.bottomLeft : Alignment.topRight,
              ),
            )
          ],
        ),
      )
    );
  }
}
