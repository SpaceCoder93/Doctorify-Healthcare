import 'dart:core';
import 'package:flutter/material.dart';
import 'mobile_scaffold.dart';

Color backgroundColor = const Color(0xFFFFFFFF);
Color accColor = const Color(0xFF4561FE);
Color dropColor = const Color(0xFFFD727E);

String aboutus = r"""At Doctorify, we believe that healthcare should be a fundamental right, not a privilege. That's why we have designed our platform to be easy to use, accessible from any device, and free of charge. Whether you are experiencing a mild fever, a cough, or any other symptoms, Doctorify is here to help you get the answers you need. 
Thank you for choosing Doctorify!""";

String team = r"""
Our Team:
• Viraj Paradkar - 20BCE10440
• Harshil - 20BCE10071
• Ayush Mukati - 20BCE10605
• Akshat Dasondhi - 20BCE10612
• Shraddha Pandey - 20MEI10029
• Nikhil Rajak - 20MEI10034
• Aarti Ajnar - 20BAC10027
• Abhishek Kushwaha - 20MIP10027
Mentions:
• Prem Ved - Medico at KIMS 
""";

class MobileAboutPage extends StatefulWidget {
  const MobileAboutPage({super.key});

  @override
  State<StatefulWidget> createState() {
    return MobileAboutPageState();
  }
}

class MobileAboutPageState extends State<MobileAboutPage> {
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
                  "ABOUT US",
                  style: TextStyle(
                    color: accColor,
                    fontFamily: 'Montserrat-Medium',
                    fontSize: 48,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15),
                child: Text(
                  aboutus,
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    color: accColor,
                    fontFamily: 'Montserrat-Medium',
                    fontSize: 22,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15),
                child: Text(
                  team,
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    color: accColor,
                    fontFamily: 'Montserrat-Medium',
                    fontSize: 20,
                  ),
                ),
              ),
            ]
        )
    );
  }
}