import 'dart:core';
import 'package:flutter/material.dart';
import 'mobile_scaffold.dart';

Color backgroundColor = const Color(0xFFFFFFFF);
Color accColor = const Color(0xFF4561FE);
Color dropColor = const Color(0xFFFD727E);

class DiseaseList {
  String name;
  DiseaseList(this.name);
}

class MobileDiseasePage extends StatefulWidget {
  const MobileDiseasePage({super.key});

  @override
  State<StatefulWidget> createState() {
    return MobileDiseasePageState();
  }
}

class MobileDiseasePageState extends State<MobileDiseasePage> {
  List<DiseaseList> symptoms = [
    DiseaseList('Acne'),
    DiseaseList('AIDS'),
    DiseaseList('Alcoholic hepatitis'),
    DiseaseList('Allergy'),
    DiseaseList('Anaemia'),
    DiseaseList('Arthritis'),
    DiseaseList('Bronchial Asthma'),
    DiseaseList('Cervical spondylosis'),
    DiseaseList('Chicken pox'),
    DiseaseList('Chikungunya'),
    DiseaseList('Chronic cholestasis'),
    DiseaseList('Common Cold'),
    DiseaseList('Conjunctivitis'),
    DiseaseList('COVID-19'),
    DiseaseList('Dehydration'),
    DiseaseList('Dengue'),
    DiseaseList('Diabetes'),
    DiseaseList('Diarrhea'),
    DiseaseList('Food Poisioning'),
    DiseaseList('Fungal infection'),
    DiseaseList('Gastroenteritis'),
    DiseaseList('GERD (Gastroesophageal reflux disease)'),
    DiseaseList('Heart attack'),
    DiseaseList('Hemmorhoids'),
    DiseaseList('hepatitis A'),
    DiseaseList('Hepatitis B'),
    DiseaseList('Hepatitis C'),
    DiseaseList('Hepatitis D'),
    DiseaseList('Hepatitis E'),
    DiseaseList('Hypertension'),
    DiseaseList('Hyperthyroidism'),
    DiseaseList('Hypoglycemia'),
    DiseaseList('Hypothyroidism'),
    DiseaseList('Impetigo'),
    DiseaseList('Insomnia'),
    DiseaseList('Jaundice'),
    DiseaseList('Malaria'),
    DiseaseList('Malnutrition'),
    DiseaseList('Migraine'),
    DiseaseList('Osteoarthristis'),
    DiseaseList('Paralysis'),
    DiseaseList('Peptic Ulcer'),
    DiseaseList('Pneumonia'),
    DiseaseList('Psoriasis'),
    DiseaseList('Tuberculosis'),
    DiseaseList('Typhoid'),
    DiseaseList('Urinary tract infection'),
    DiseaseList('Varicose veins'),
    DiseaseList('Vertigo')
  ];
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
                  "LIST OF\nDISEASE",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: accColor,
                    fontFamily: 'Montserrat-Medium',
                    fontSize: 48,
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: const Color(0xFF4561FE),
                      width: 5,
                    )
                  ),
                child: ListView.builder(itemCount: symptoms.length, itemBuilder: (BuildContext context, int index){
                  return diseaseitem(symptoms[index].name);}
              ),
            ),
          )
        ]
      )
    );
  }

  Widget diseaseitem(String name){
    return ListTile(
      title: Text(
        name,
        textAlign: TextAlign.left,
        style: const TextStyle(
          color: Color(0xFF4561FE),
          fontFamily: 'Montserrat_Medium',
          fontSize: 24
          ),
        ),
    );
  }
}