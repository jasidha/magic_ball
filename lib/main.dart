import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const Magicball());
}
class Magicball extends StatefulWidget {
  const Magicball({Key? key}) : super(key: key);



  @override
  State<Magicball> createState() => _MagicballState();
}
class _MagicballState extends State<Magicball> {
  int balls=1;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor:Color(0xff612469),
        appBar: AppBar(
          title:Center(child: Text("Magicbaoll",)),
          backgroundColor: Colors.blueGrey,

        ),
        body:Center(
          child: Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                   InkWell(onTap: (){
                     setState(() {
                       balls=Random().nextInt(4)+1;

                     });

                   },
                     child: Container(
                      height: 400,
                      width:400,
                      child: Image(image: AssetImage("balls/ball$balls.png")),


            ),
                   ),

            ],
        ),
      ),

    ),
    ),
    );
  }
}

