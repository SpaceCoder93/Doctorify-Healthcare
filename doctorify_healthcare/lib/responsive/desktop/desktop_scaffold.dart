import 'package:flutter/material.dart';
import 'package:doctorify_healthcare/responsive/desktop/about.dart';
import 'package:doctorify_healthcare/responsive/desktop/disease.dart';
import 'package:doctorify_healthcare/responsive/desktop/symptom.dart';
import 'package:doctorify_healthcare/responsive/desktop/prognosis_input.dart';
import 'package:doctorify_healthcare/responsive/desktop/disclaimer.dart';

class DesktopScaffold extends StatefulWidget {
  const DesktopScaffold({super.key});

  @override
  State<DesktopScaffold> createState() => _DesktopScaffoldState();
}

class _DesktopScaffoldState extends State<DesktopScaffold> {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    double w = screenSize.width;
    double h = screenSize.height;
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Stack(
          children: <Widget>[
            SizedBox(
              width: w*0.55,
              child: Positioned(
                top: 0,
                left: 0,
                child:Image.asset(r'assets\vectors\hometop_vec.png', fit: BoxFit.fill,),
              ),
            ),
            Positioned(
              width: 0.5*w,
              height: 0.5*h,
              bottom: 0,
              right: 0,
              child:Image.asset(r'assets\vectors\home_vec_desktop.png'),
            ),
            Positioned(
              top: 50, 
              left: 50,
              child: Column(
                children: [
                Text(
                  "Doctorify",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: const Color(0xFFFFFFFF),
                    fontFamily: 'Montserrat-Light',
                    fontSize: w*0.0833
                  ),
                ),
                Text(
                  "Disease Prognosis at your\nfingertips",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: const Color(0xFFFFFFFF),
                    fontFamily: 'Montserrat-Light',
                    fontSize: w*0.03125
                  ),
                ),
              ],
              )
            ),
            Positioned(
              top: 400,
              left: 150,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => const PrognosisInputPage()));
                },
                style: ElevatedButton.styleFrom(
                  side: const BorderSide(
                    color: Color(0xFFFFFFFF),
                  ),
                  backgroundColor: const Color(0xFFFFFFFF),
                  shape: const StadiumBorder()
                ),
                child: Text(
                  'Start Prognosis',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Montserrat-Medium',
                    fontSize: w*0.025,
                    color: const Color(0xFF4561FE),
                  ),
                ),
              ),
            ),
            Positioned(
              right: 10,
              top: 10,
              child: Row(
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => const DisclaimerPage()));
                    },
                    style: ElevatedButton.styleFrom(
                      side: const BorderSide(
                        color: Color(0xFFFFFFFF),
                      ),
                      backgroundColor: const Color(0xFFFFFFFF),
                      shape: const StadiumBorder()
                      ),
                    child: const Text(
                      'Disclaimer',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'Montserrat-Medium',
                        fontSize: 28,
                        color: Color(0xFF4561FE),
                      ),
                      ),
                    ),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => const DiseasePage()));
                    },
                    style: ElevatedButton.styleFrom(
                      side: const BorderSide(
                        color: Color(0xFFFFFFFF),
                      ),
                      backgroundColor: const Color(0xFFFFFFFF),
                      shape: const StadiumBorder()
                      ),
                    child: const Text(
                      'Diseases',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'Montserrat-Medium',
                        fontSize: 28,
                        color: Color(0xFF4561FE),
                      ),
                      ),
                    ),
                  TextButton(
                    onPressed: () async {
                      //Configuration().change_currpage("symptoms");
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => const SymptomPage()));
                    },
                    style: ElevatedButton.styleFrom(
                      side: const BorderSide(
                        color: Color(0xFFFFFFFF),
                      ),
                      backgroundColor: const Color(0xFFFFFFFF),
                      shape: const StadiumBorder()
                      ),
                    child: const Text(
                      'Symptoms',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'Montserrat-Medium',
                        fontSize: 28,
                        color: Color(0xFF4561FE),
                      ),
                      ),
                    ),
                  TextButton(
                    onPressed: () {
                      //Configuration().change_currpage("about");
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => const AboutPage()));
                    },
                    style: ElevatedButton.styleFrom(
                      side: const BorderSide(
                        color: Color(0xFFFFFFFF),
                      ),
                      backgroundColor: const Color(0xFFFFFFFF),
                      shape: const StadiumBorder()
                      ),
                    child: const Text(
                      'About',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'Montserrat-Medium',
                        fontSize: 28,
                        color: Color(0xFF4561FE),
                      ),
                    ),
                  ),
                ],
              )
            )
          ]
        )
      )
    );
  }
}