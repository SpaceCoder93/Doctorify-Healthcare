import 'dart:core';
import 'package:doctorify_healthcare/responsive/desktop/desktop_scaffold.dart';
import 'package:flutter/material.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({super.key});

  @override
  State<StatefulWidget> createState() {
    return AboutPageState();
  }
}

class AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    double w = screenSize.width;
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body:Stack(
            children: <Widget>[
              Image.asset(r'assets\images\about.png',
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
              )
            ]
        )
    );
  }
}