import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class DiseaseAlbum {
  final List predictions;
  final String accuracy;
  const DiseaseAlbum({
    required this.predictions,
    required this.accuracy,
  });
  factory DiseaseAlbum.fromJson(Map<String, dynamic> json) {
    return DiseaseAlbum(
        predictions: json['diseases'],
        accuracy: json['accuracy'].toString(),
    );
  }
}

class DiseasePredict{
  Future<List<String>> fetchAlbum(symp) async {
    String fin = "";
    for(int i=0; i<symp.length-1; i++){
      fin = "${fin + symp[i]}|";
    }
    fin = fin + symp[symp.length-1];
    final response = await http.get(Uri.parse('http://epicsg13.pythonanywhere.com/p?input=$fin'));
    if (response.statusCode == 200) {
      DiseaseAlbum report = DiseaseAlbum.fromJson(jsonDecode(response.body));
      String p1 = "";
      String p2 = "";
      String p3 = "";
      String p4 = "";
      if(report.predictions.length == 1){
        p1 = p1 + report.predictions[0];
      }
      else if(report.predictions.length == 2){
        p1 = p1 + report.predictions[0];
        p2 = p2 + report.predictions[1];
      }
      else if(report.predictions.length == 3){
        p1 = p1 + report.predictions[0];
        p2 = p2 + report.predictions[1];
        p3 = p3 + report.predictions[2];
      }
      else if(report.predictions.length == 4){
        p1 = p1 + report.predictions[0];
        p2 = p2 + report.predictions[1];
        p3 = p3 + report.predictions[3];
        p4 = p4 + report.predictions[4];
      }
      return [p1, p2, p3, p4, report.accuracy.toString()];
    } else {
      debugPrint(response.statusCode.toString());
      throw Exception('Failed to load album');
    }
  }
}