import 'dart:core';
import 'package:doctorify_healthcare/responsive/desktop/desktop_scaffold.dart';
import 'package:flutter/material.dart';

class DiseaseList {
  String name;
  DiseaseList(this.name);
}

class DiseasePage extends StatefulWidget {
  const DiseasePage({super.key});

  @override
  State<StatefulWidget> createState() {
    return DiseasePageState();
  }
}

class DiseasePageState extends State<DiseasePage> {
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
    Size screenSize = MediaQuery.of(context).size;
    double w = screenSize.width;
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body:Stack(
            children: <Widget>[
              Image.asset(r'assets\images\disease.png',
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
              Positioned(
                left: 110,
                top: 190,
                child: SizedBox(
                  width: 850,
                  height: 500,
                  child: Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: const Color(0xFF4561FE),
                          width: 5,
                        )
                        ),
                      child: ListView.builder(
                        itemCount: symptoms.length,
                        itemBuilder: (BuildContext context, int index){
                          return diseaseitem(symptoms[index].name);}
                        ),
                    ),
                    )
                    )
        )]
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