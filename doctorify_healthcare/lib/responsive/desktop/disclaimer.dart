import 'dart:core';
import 'package:doctorify_healthcare/responsive/desktop/desktop_scaffold.dart';
import 'package:flutter/material.dart';

class DisclaimerPage extends StatefulWidget {
  const DisclaimerPage({super.key});

  @override
  State<StatefulWidget> createState() {
    return DisclaimerPageState();
  }
}

class DisclaimerPageState extends State<DisclaimerPage> {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    double w = screenSize.width;
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body:Stack(
            children: <Widget>[
              Image.asset(r'assets\images\disclaimer.png',
              fit: BoxFit.fill,
              ),
              Positioned(
                top: w*0.0260,
                child: IconButton(
                  color: const Color(0xFF4561FE),
                  iconSize: w*0.0325,
                  icon: const Icon(
                    Icons.arrow_back,
                  ),
                  onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => const DesktopScaffold()));
                  }
                ),
              ),
          ]
        )
    );
  }
}