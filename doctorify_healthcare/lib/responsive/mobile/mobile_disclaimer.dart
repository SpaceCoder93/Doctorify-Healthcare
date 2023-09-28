import 'dart:core';
import 'package:flutter/material.dart';
import 'mobile_scaffold.dart';

Color backgroundColor = const Color(0xFFFFFFFF);
Color accColor = const Color(0xFF4561FE);
Color dropColor = const Color(0xFFFD727E);

String disclaimer = r"""Our platform is designed to assist individuals who have limited access to healthcare services and is not intended to replace medical advice or diagnosis from a licensed healthcare professional. 
It's important to note that Doctorify is not a substitute for professional medical advice, diagnosis, or treatment. Our machine learning predictions are based on symptoms only and do not take into account important medical factors that can only be evaluated by a trained medical professional. 
Therefore, our predictions should never be used as a primary diagnosis or treatment option. Instead, we recommend that you always seek the advice of a licensed healthcare professional. 
By using Doctorify, you agree that our platform is for informational purposes only and that you assume all risk associated with the use of our predictions. Doctorify is not responsible for any medical decisions or actions taken based on the information provided by our platform. """;

class MobileDisclaimerPage extends StatefulWidget {
  const MobileDisclaimerPage({super.key});

  @override
  State<StatefulWidget> createState() {
    return MobileDisclaimerPageState();
  }
}

class MobileDisclaimerPageState extends State<MobileDisclaimerPage> {
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
        body:SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Center(
                child: Text(
                  "DISCLAIMER",
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
                  disclaimer,
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    color: accColor,
                    fontFamily: 'Montserrat-Light',
                    fontSize: 22,
                  ),
                ),
              ),
            ]
        )
      )
    );
  }
}