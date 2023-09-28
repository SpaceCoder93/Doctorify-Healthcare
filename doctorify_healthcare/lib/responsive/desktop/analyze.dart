import 'dart:core';
import 'package:doctorify_healthcare/responsive/desktop/prognosis_output.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../APIs/prediction_api.dart';
import '../../supabase/supabase.dart';

class AnalyzePage extends StatefulWidget {
  final List<String> finallist;
  const AnalyzePage({
    super.key, 
    required this.finallist,
  });
  @override
  State<StatefulWidget> createState() {
    return AnalyzePageState();
  }
}

class AnalyzePageState extends State<AnalyzePage> {
  List<String> finalsend = [];

  Future<int?> pref() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final int? weight = await prefs.getInt('weight');
    final int? height = await prefs.getInt('height');
    int BMI = await (weight!/(height!*height)).round();
    return BMI;
  }
  
  void predict(finalstring) async {
    List<String> prediction = await DiseasePredict().fetchAlbum(finalstring);
    String l1 = prediction[0];
    String d1ac = l1.substring(l1.length-5, l1.length-3);
    String d1 = l1.substring(0, l1.length-6);
    List<String> medicines = await SupaMedicine(d1);
    List<String> prec = await SupaPrec(d1);
    List<String> send = prediction + medicines + prec;
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => PrognosisOutputPage(finallist: send)));
  }

  @override
  void initState(){
    super.initState();
    String finalstring = "";
    for(var i=0;i<widget.finallist.length;i++){
      finalstring = "$finalstring|${widget.finallist[i]}";
    }
    predict(finalstring);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body:Image.asset(r'assets\images\analyze.png',
          fit: BoxFit.cover,
        )
    );
  }
}