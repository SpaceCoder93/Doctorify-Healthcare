import 'dart:core';
import 'package:doctorify_healthcare/responsive/desktop/desktop_scaffold.dart';
import 'package:flutter/material.dart';

class SymptomList {
  String name;
  SymptomList(this.name);
}

class SymptomPage extends StatefulWidget {
  const SymptomPage({super.key});

  @override
  State<StatefulWidget> createState() {
    return SymptomPageState();
  }
}

class SymptomPageState extends State<SymptomPage> {
  List<SymptomList> symptoms = [
    SymptomList('Abdominal pain'),
    SymptomList('Abnormal menstruation'),
    SymptomList('Acidity'),
    SymptomList('Acute liver failure'),
    SymptomList('Altered sensorium'),
    SymptomList('Anxiety'),
    SymptomList('Back pain'),
    SymptomList('Belly pain'),
    SymptomList('Blackheads'),
    SymptomList('Bladder discomfort'),
    SymptomList('Blister'),
    SymptomList('Blood in sputum'),
    SymptomList('Bloody stool'),
    SymptomList('Blurred and distorted vision'),
    SymptomList('Breathlessness'),
    SymptomList('Brittle nails'),
    SymptomList('Bruising'),
    SymptomList('Burning micturition'),
    SymptomList('Chest pain'),
    SymptomList('Chills'),
    SymptomList('Cold hands and feets'),
    SymptomList('Coma'),
    SymptomList('Congestion'),
    SymptomList('Constipation'),
    SymptomList('Continuous feel of urine'),
    SymptomList('Continuous sneezing'),
    SymptomList('Cough'),
    SymptomList('Cramps'),
    SymptomList('Dark urine'),
    SymptomList('Dehydration'),
    SymptomList('Depression'),
    SymptomList('Diarrhoea'),
    SymptomList('Dischromic patches'),
    SymptomList('Distention of abdomen'),
    SymptomList('Dizziness'),
    SymptomList('Drying and tingling lips'),
    SymptomList('Enlarged thyroid'),
    SymptomList('Excessive hunger'),
    SymptomList('Extra marital contacts'),
    SymptomList('Family history'),
    SymptomList('Fast heart rate'),
    SymptomList('Fatigue'),
    SymptomList('Fluid overload'),
    SymptomList('Fluid overload'),
    SymptomList('Foul smell ofurine'),
    SymptomList('Headache'),
    SymptomList('High fever'),
    SymptomList('Hip joint pain'),
    SymptomList('History of alcohol consumption'),
    SymptomList('Increased appetite'),
    SymptomList('Indigestion'),
    SymptomList('Inflammatory nails'),
    SymptomList('Internal itching'),
    SymptomList('Irregular sugar level'),
    SymptomList('Irritability'),
    SymptomList('Irritation in anus'),
    SymptomList('Itching'),
    SymptomList('Joint pain'),
    SymptomList('Knee pain'),
    SymptomList('Lack of concentration'),
    SymptomList('Lethargy'),
    SymptomList('Loss of appetite'),
    SymptomList('Loss of balance'),
    SymptomList('Loss of smell'),
    SymptomList('Malaise'),
    SymptomList('Mild fever'),
    SymptomList('Mood swings'),
    SymptomList('Movement stiffness'),
    SymptomList('Mucoid sputum'),
    SymptomList('Muscle pain'),
    SymptomList('Muscle wasting'),
    SymptomList('Muscle weakness'),
    SymptomList('Nausea'),
    SymptomList('Neck pain'),
    SymptomList('Nodal skin eruptions'),
    SymptomList('Obesity'),
    SymptomList('Pain behind the eyes'),
    SymptomList('Pain during bowel movements'),
    SymptomList('Pain in anal region'),
    SymptomList('Painful walking'),
    SymptomList('Palpitations'),
    SymptomList('Passage of gases'),
    SymptomList('Patches in throat'),
    SymptomList('Phlegm'),
    SymptomList('Polyuria'),
    SymptomList('Prominent veins on calf'),
    SymptomList('Puffy face and eyes'),
    SymptomList('Pus filled pimples'),
    SymptomList('Receiving blood transfusion'),
    SymptomList('Receiving unsterile injections'),
    SymptomList('Red sore around nose'),
    SymptomList('Red spots over body'),
    SymptomList('Redness of eyes'),
    SymptomList('Restlessness'),
    SymptomList('Runny nose'),
    SymptomList('Rusty sputum'),
    SymptomList('Scurring'),
    SymptomList('Shivering'),
    SymptomList('Silver like dusting'),
    SymptomList('Sinus pressure'),
    SymptomList('Skin peeling'),
    SymptomList('Skin rash'),
    SymptomList('Slurred speech'),
    SymptomList('Small dents in nails'),
    SymptomList('Spinning movements'),
    SymptomList('Spotting urination'),
    SymptomList('Stiff neck'),
    SymptomList('Stomach bleeding'),
    SymptomList('Stomach pain'),
    SymptomList('Sunken eyes'),
    SymptomList('Sweating'),
    SymptomList('Swelled lymph nodes'),
    SymptomList('Swelling joints'),
    SymptomList('Swelling of stomach'),
    SymptomList('Swollen blood vessels'),
    SymptomList('Swollen extremeties'),
    SymptomList('Swollen legs'),
    SymptomList('Throat irritation'),
    SymptomList('Toxic look (typhos)'),
    SymptomList('Ulcers on tongue'),
    SymptomList('Unsteadiness'),
    SymptomList('Visual disturbances'),
    SymptomList('Vomiting'),
    SymptomList('Watering from eyes'),
    SymptomList('Weakness in limbs'),
    SymptomList('Weakness of one body side'),
    SymptomList('Weight gain'),
    SymptomList('Weight loss'),
    SymptomList('Yellow crust ooze'),
    SymptomList('Yellow urine'),
    SymptomList('Yellowing of eyes'),
    SymptomList('Yellowish skin')
  ];
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    double w = screenSize.width;
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body:Stack(
            children: <Widget>[
              Image.asset(r'assets\images\symptoms.png',
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
                      child: ListView.builder(itemCount: symptoms.length, itemBuilder: (BuildContext context, int index){
                        return symptomitem(symptoms[index].name);}
                        ),
                    ),
                    )
                    )
        )]
        )
    );
  }

  Widget symptomitem(String name){
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