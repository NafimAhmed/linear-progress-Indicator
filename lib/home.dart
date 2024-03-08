


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget{
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with TickerProviderStateMixin{


  late AnimationController animationController;

  @override
  void initState() {
    animationController=AnimationController(
        vsync: this,
      duration: Duration(seconds: 5)
    )..addListener(() {
      setState(() {

      });
    });

    animationController.repeat(reverse: false);

    // TODO: implement initState
    super.initState();
  }
  @override
  void dispose() {
    animationController.dispose();
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(''),
      ),
      body: Column(
        children: [
          LinearProgressIndicator(
            value: animationController.value,
          )
        ],
      ),
    );
  }
}