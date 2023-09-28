import 'dart:core';
import 'package:flutter/material.dart';
import 'mobile_scaffold.dart';

Color backgroundColor = const Color(0xFFFFFFFF);
Color accColor = const Color(0xFF4561FE);
Color dropColor = const Color(0xFFFD727E);

class MobileAboutPage extends StatefulWidget {
  const MobileAboutPage({super.key});

  @override
  State<StatefulWidget> createState() {
    return MobileAboutPageState();
  }
}

class MobileAboutPageState extends State<MobileAboutPage> {

  String disease = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: backgroundColor,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          title: SizedBox(
            height: 55,
            child: Image.asset(r'assets\vectors\logo.png', fit: BoxFit.contain,),
          ),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            color: accColor,
            onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => const MobileScaffold()));
            },
            ),
        ),
        body:Column(
            children: <Widget>[
              Center(
                child: Text(
                  disease,
                  style: TextStyle(
                    color: accColor,
                    fontFamily: 'Montserrat-Medium',
                    fontSize: 48,
                  ),
                ),
              ),
            ]
        )
    );
  }
}