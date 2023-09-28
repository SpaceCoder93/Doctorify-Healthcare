import 'dart:core';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:url_launcher/url_launcher.dart' as url_launcher;
import '../../supabase/supabase.dart';
import 'mobile_scaffold.dart';

Color backgroundColor = const Color(0xFFFFFFFF);
Color accColor = const Color(0xFF4561FE);
Color dropColor = const Color(0xFFFD727E);

class MobileResultPage extends StatefulWidget {
  final List<dynamic> finallist;
    const MobileResultPage({
    super.key, 
    required this.finallist,
  });
  @override
  State<StatefulWidget> createState() {
    return MobileResultPageState();
  }
}

class MobileResultPageState extends State<MobileResultPage> {

  String d1 = "";
  String d2 = "";
  String d3 = "";
  String d4 = "";
  int d1acc = 0;
  int d2acc = 0;
  int d3acc = 0;
  int d4acc = 0;
  double acc = 0;

  bool t0 = false;
  bool t1 = false;
  bool t2 = false;
  bool t3 = false;
  bool t4 = true;
  bool t5 = true;
  bool t6 = true;
  bool t7 = true;

  String m1 = "";
  String m2 = "";
  String m3 = "";
  String m1u = "";
  String m2u = "";
  String m3u = "";
  String l1 = "";
  String l2 = "";
  String l3 = "";

  String p1 = "";
  String p2 = "";
  String p3 = "";
  String p4 = "";
  String p5 = "";

  double carbs = 0;
  double protien = 0;
  double fats = 0;
  double fluids = 0;
  double vits = 0;
  double minerals = 0;

  int BMI = 0;

  int we = 70;

  Future<int?> pref() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final int? weight = await prefs.getInt('weight');
    final int? height = await prefs.getInt('height');
    int BMI = await (weight!/(height!*height)).round();
    return BMI;
  }

  @override
  initState() {
    Future.delayed(Duration.zero,() async {
      BMI = int.parse(BMI as String);
      final SharedPreferences prefs = await SharedPreferences.getInstance();
      we = prefs.getInt('weight')!;
      print("Weight is $we");
    });
    super.initState();
    setState(() {

      if(BMI<=25 && BMI>=19){
        carbs = we*5;
        protien = we*1.1;
        fats = we*0.9;
        fluids = we/25;
      }
      else if(BMI>25){
        carbs = we*6;
        protien = we*1.75;
        fats = we*1.25;
        fluids = we/25;
      }
      else{
        carbs = we*4;
        protien = we*1.35;
        fats = we*0.85;
        fluids = we/25;
      }

      String l1 = widget.finallist[0];
      String d1ac = l1.substring(l1.length-5, l1.length-3);
      d1acc = int.parse(d1ac);
      d1 = l1.substring(0, l1.length-6);

      String l2 = widget.finallist[1];
      if(l2 != ""){
        String d2ac = l2.substring(l2.length-5, l2.length-3);
        d2acc = int.parse(d2ac);
        d2 = l2.substring(0, l2.length-6);
        t1 != t1;
      }

      String l3 = widget.finallist[2];
      if(l3 != ""){
        String d3ac = l3.substring(l3.length-5, l3.length-3);
        d3acc = int.parse(d3ac);
        d3 = l3.substring(0, l3.length-6);
        t2 != t2;
      }

      String l4 = widget.finallist[3];
      if(l4 != ""){
        String d4ac = l4.substring(l4.length-5, l4.length-3);
        d4acc = int.parse(d4ac);
        d4 = l4.substring(0, l4.length-6);
        t3 != t3;
      }

      if(l2 != "" && l3 != "" && l4 != ""){
        t0 != t0;
      }

      m1 = widget.finallist[5];
      m2 = widget.finallist[6];
      m3 = widget.finallist[7];
      m1u = widget.finallist[8];
      m2u = widget.finallist[9];
      m3u = widget.finallist[10];

      p1 = widget.finallist[11];
      p2 = widget.finallist[12];
      p3 = widget.finallist[13];
      p4 = widget.finallist[14];
      p5 = widget.finallist[15];

      if(m2=="NIL"){
        t5 != t5;
      }

      if(m3=="NIL"){
        t6 != t6;
      }

      String acc1 = widget.finallist[4];
      acc = double.parse(acc1);

      WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
        String a = await pref().toString();
        if(a=='0'){
          showDialog(
              context: context,
              builder: (BuildContext context)
              {
                return Expanded(
                  child: AlertDialog(
                    title: Text('Welcome'),
                    content: Column(
                      children: [
                        Text('Weight'),
                        TextField(
                          controller: w,
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        Text('Height'),
                        TextField(
                          controller: h,
                        ),
                      ],
                    ),
                    actions: [
                      ElevatedButton(
                        onPressed: () async {
                          int weight = int.parse(w.text);
                          int height = int.parse(h.text);
                          final SharedPreferences prefs = await SharedPreferences.getInstance();
                          await prefs.setInt('weight', weight);
                          await prefs.setInt('height', height);
                          Navigator.of(context, rootNavigator: true).pop('dialog');
                        },
                        child: Text('ACCEPT'),
                      ),
                    ],
                  ),
                );
              }
              );
        }
      });
    });
  }

  TextEditingController w = TextEditingController();
  TextEditingController h = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          backgroundColor: accColor,
          centerTitle: true,
          elevation: 0,
          title: SizedBox(
            height: 55,
            child: Image.asset(r'assets\vectors\Logo_White.png', fit: BoxFit.contain,),
            ),
          leading: IconButton(
            icon: const Icon(Icons.home),
            onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => const MobileScaffold()));
            },
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                child: Stack(
                    children: [
                      SizedBox(
                        width: double.infinity,
                        child: Image.asset(r"assets\vectors\resultpagetop.png", fit: BoxFit.contain,),
                      ),
                      Padding(
                          padding: EdgeInsets.fromLTRB(10, 50, 10, 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Center(
                                child: Text(
                                  "You might be suffering from",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: backgroundColor,
                                    fontFamily: "Montserrat-Light",
                                    fontSize: 26,
                                  ),
                                ),
                              ),
                              Center(
                                child: Text(
                                  d1,
                                  style: TextStyle(
                                    color: dropColor,
                                    fontFamily: "Montserrat-Light",
                                    fontSize: 32,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Center(
                                child: CircularPercentIndicator(
                                  radius: 75.0,
                                  lineWidth: 15.0,
                                  percent: acc/100,
                                  startAngle: 180,
                                  progressColor: backgroundColor,
                                  backgroundColor: accColor,
                                  center: Text(
                                    textAlign: TextAlign.center,
                                    '${acc.toString()}%\nAccuracy',
                                    style: const TextStyle(
                                      fontFamily: 'Montserrat_Regular',
                                      fontSize: 22,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height:75,
                              ),
                              Visibility(
                                visible: t0,
                                child: Text(
                                  "Other prognosis includes",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    color: accColor,
                                    fontFamily: "Montserrat-Light",
                                    fontSize: 26,
                                  ),
                                ),
                              ),
                              Visibility(
                                visible: t1,
                                child: Text(
                                  "•    $d2",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    color: accColor,
                                    fontFamily: "Montserrat-Light",
                                    fontSize: 22,
                                  ),
                                ),
                              ),
                              Visibility(
                                visible: t2,
                                child: Text(
                                  "•    $d3",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    color: accColor,
                                    fontFamily: "Montserrat-Light",
                                    fontSize: 22,
                                  ),
                                ),
                              ),
                              Visibility(
                                visible: t3,
                                child: Text(
                                  "•    $d4",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    color: accColor,
                                    fontFamily: "Montserrat-Light",
                                    fontSize: 22,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Text(
                                "Drugs the might work",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  color: accColor,
                                  fontFamily: "Montserrat-Light",
                                  fontSize: 26,
                                ),
                              ),
                              Visibility(
                                  visible: t4,
                                  child: InkWell(
                                    onTap: (){
                                      Uri u1 = Uri.parse(m1u);
                                      url_launcher.launchUrl(u1);
                                    },
                                    child: Text(
                                      "•    $m1",
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        color: accColor,
                                        fontFamily: "Montserrat-Light",
                                        fontSize: 22,
                                      ),
                                    ),
                                  )
                              ),
                              Visibility(
                                  visible: t5,
                                  child: InkWell(
                                    onTap: (){
                                      Uri u2 = Uri.parse(m2u);
                                      url_launcher.launchUrl(u2);
                                    },
                                    child: Text(
                                      "•    $m2",
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        color: accColor,
                                        fontFamily: "Montserrat-Light",
                                        fontSize: 22,
                                      ),
                                    ),
                                  )
                              ),
                              Visibility(
                                visible: t6,
                                child: InkWell(
                                  onTap: (){
                                    Uri u3 = Uri.parse(m3u);
                                    url_launcher.launchUrl(u3);
                                  },
                                  child: Text(
                                    "•    $m3",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      color: accColor,
                                      fontFamily: "Montserrat-Light",
                                      fontSize: 22,
                                    ),
                                  ),
                                )
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Text(
                                "Your diet should include",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  color: accColor,
                                  fontFamily: "Montserrat-Light",
                                  fontSize: 26,
                                ),
                              ),
                              Text(
                                "•   Carbs: $carbs g",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  color: accColor,
                                  fontFamily: "Montserrat-Light",
                                  fontSize: 22,
                                ),
                              ),
                              Text(
                                "•   Protiens: $protien g",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  color: accColor,
                                  fontFamily: "Montserrat-Light",
                                  fontSize: 22,
                                ),
                              ),
                              Text(
                                "•   Fats: $fats g",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  color: accColor,
                                  fontFamily: "Montserrat-Light",
                                  fontSize: 22,
                                ),
                              ),
                              Text(
                                "•   Fluids: $fluids L",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  color: accColor,
                                  fontFamily: "Montserrat-Light",
                                  fontSize: 22,
                                ),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Text(
                                "Measures that you should follow",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  color: accColor,
                                  fontFamily: "Montserrat-Light",
                                  fontSize: 26,
                                ),
                              ),
                              Text(
                                "•   $p1",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  color: accColor,
                                  fontFamily: "Montserrat-Light",
                                  fontSize: 22,
                                ),
                              ),
                              Text(
                                "•   $p2",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  color: accColor,
                                  fontFamily: "Montserrat-Light",
                                  fontSize: 22,
                                ),
                              ),
                              Text(
                                "•   $p3",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  color: accColor,
                                  fontFamily: "Montserrat-Light",
                                  fontSize: 22,
                                ),
                              ),
                              Text(
                                "•   $p4",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  color: accColor,
                                  fontFamily: "Montserrat-Light",
                                  fontSize: 22,
                                ),
                              ),
                              Text(
                                "•   $p5",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  color: accColor,
                                  fontFamily: "Montserrat-Light",
                                  fontSize: 22,
                                ),
                              ),
                            ],
                          )
                      ),
                    ]
                ),
              )
            ],
          ),
        )
    );
  }
}