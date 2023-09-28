import 'package:doctorify_healthcare/responsive/mobile/mobile_scaffold.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

Future<List<String>> SupaMedicine(String disease) async {
  SupabaseClient supa = SupabaseClient(dotenv.env['SUPABASE_URL'].toString(), dotenv.env['SUPABASE_KEY'].toString());
  final medicine = await supa
    .from('Medicines')
    .select('Medicine1, Medicine2, Medicine3')
    .eq('disease', disease);
  final m1 = medicine[0];
  print(m1['Medicine1'].runtimeType);
  print(m1['Medicine2'].runtimeType);
  print(m1['Medicine3'].runtimeType);
  String med1 = m1['Medicine1'];
  String med2 = m1['Medicine2'];
  String med3 = m1['Medicine3'];
  List<String> ret = [med1, med2, med3];
  if(med1!='None'){
    final link1 = await supa
        .from('Pharmacy_Link')
        .select('link')
        .eq('name', med1);
    ret.insert(ret.length, link1[0]['link']);
  }
  if(m1['Medicine2'] != "NIL"){
    final link2 = await supa
        .from('Pharmacy_Link')
        .select('link')
        .eq('name', med2);
    ret.insert(ret.length, link2[0]['link']);
  }
  else{
    ret.insert(ret.length, 'NIL');
  }
  if(m1['Medicine3'] != "NIL"){
    final link3 = await supa
        .from('Pharmacy_Link')
        .select('link')
        .eq('name', med3);
    ret.insert(ret.length, link3[0]['link']);
  }
  else{
    ret.insert(ret.length, 'NIL');
  }
  return ret;
}

Future<List<String>> SupaPrec(String disease) async {
  SupabaseClient supa = SupabaseClient('https://naynhkaulxbuaqjhicro.supabase.co', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im5heW5oa2F1bHhidWFxamhpY3JvIiwicm9sZSI6ImFub24iLCJpYXQiOjE2NzY3Mjg4ODAsImV4cCI6MTk5MjMwNDg4MH0.UY70lNSxocqmrAfB_QeIRKWKZZ0RSlwh7HCOHa2KQ8U');
  final prec = await supa
      .from('Prevention_Precaution')
      .select('Precaution1, Precaution2, Precaution3, Precaution4, Precaution5')
      .eq('Name', disease);

  String med1 = prec[0]['Precaution1'];
  String med2 = prec[0]['Precaution2'];
  String med3 = prec[0]['Precaution3'];
  String med4 = prec[0]['Precaution4'];
  String med5 = prec[0]['Precaution5'];
  List<String> ret = [med1, med2, med3, med4, med5];
  print(ret);
  return ret;
}