import 'dart:core';
import 'package:doctorify_healthcare/responsive/desktop/analyze.dart';
import 'package:flutter/material.dart';
import 'package:doctorify_healthcare/responsive/desktop/desktop_scaffold.dart';

class SymptomModel {
  String name;
  String dispname;
  bool selected;
  SymptomModel(this.name, this.dispname, this.selected);
}

class PrognosisInputPage extends StatefulWidget {
  const PrognosisInputPage({super.key});
  @override
  State<StatefulWidget> createState() {
    return PrognosisInputPageState();
  }
}

class PrognosisInputPageState extends State<PrognosisInputPage> {
  List<String> finalsend = [];
  List<String> categories = ['Respiratory symptoms', 'Digestive symptoms', 'Urinary symptoms', 'Skin symptoms', 'Neurological symptoms',
    'Musculoskeletal symptoms', 'Reproductive system symptoms', 'Behavioral symptoms', 'Others'];
  List<dynamic> symptom = [[
    SymptomModel('blood_in_sputum', 'Blood in sputum', false),
    SymptomModel('breathlessness', 'Breathlessness', false),
    SymptomModel('chest_pain', 'Chest pain', false),
    SymptomModel('congestion', 'Congestion', false),
    SymptomModel('continuous_sneezing', 'Continuous sneezing', false),
    SymptomModel('cough', 'Cough', false),
    SymptomModel('fast_heart_rate', 'Fast heart rate', false),
    SymptomModel('mucoid_sputum', 'Mucoid sputum', false),
    SymptomModel('palpitations', 'Palpitations', false),
    SymptomModel('patches_in_throat', 'Patches in throat', false),
    SymptomModel('phlegm', 'Phlegm', false),
    SymptomModel('redness_of_eyes', 'Redness of eyes', false),
    SymptomModel('runny_nose', 'Runny nose', false),
    SymptomModel('rusty_sputum', 'Rusty sputum', false),
    SymptomModel('shortness_of_breath', 'Shortness of breath', false),
    SymptomModel('sinus_pressure', 'Sinus pressure', false),
    SymptomModel('throat_irritation', 'Throat irritation', false),
    SymptomModel('wheezing', 'Wheezing', false)
  ],
  [
    SymptomModel('abdominal_pain', 'Abdominal pain', false),
    SymptomModel('acidity', 'Acidity', false),
    SymptomModel('acute_liver_failure', 'Acute liver failure', false),
    SymptomModel('belly_pain', 'Belly pain', false),
    SymptomModel('bloody_stool', 'Bloody stool', false),
    SymptomModel('constipation', 'Constipation', false),
    SymptomModel('dehydration', 'Dehydration', false),
    SymptomModel('diarrhea', 'Diarrhea', false),
    SymptomModel('distention_of_abdomen', 'Distention of abdomen', false),
    SymptomModel('fluid_overload', 'Fluid overload', false),
    SymptomModel('increased_appetite', 'Increased appetite', false),
    SymptomModel('indigestion', 'Indigestion', false),
    SymptomModel('irregular_sugar_level', 'Irregular sugar level', false),
    SymptomModel('irritation_in_anus', 'Irritation in anus', false),
    SymptomModel('loss_of_appetite', 'Loss of appetite', false),
    SymptomModel('nausea', 'Nausea', false),
    SymptomModel('pain_during_bowel_movements', 'Pain during bowel movements', false),
    SymptomModel('pain_in_anal_region', 'Pain in anal region', false),
    SymptomModel('passage_of_gases', 'Passage of gases', false),
    SymptomModel('stomach_bleeding', 'Stomach bleeding', false),
    SymptomModel('stomach_pain', 'Stomach pain', false),
    SymptomModel('swelling_of_stomach', 'Swelling of stomach', false),
    SymptomModel('ulcers_on_tongue', 'Ulcers on tongue', false),
    SymptomModel('vomiting', 'Vomiting', false)
  ],
  [
    SymptomModel('bladder_discomfort', 'Bladder discomfort', false),
    SymptomModel('burning_micturition', 'Burning micturition', false),
    SymptomModel('continuous_feel_of_urine', 'Continuous feel of urine', false),
    SymptomModel('dark_urine', 'Dark urine', false),
    SymptomModel('foul_smell_of_urine', 'Foul smell of urine', false),
    SymptomModel('polyuria', 'Polyuria', false),
    SymptomModel('spotting_urination', 'Spotting urination', false),
    SymptomModel('yellow_urine', 'Yellow urine', false),
    SymptomModel('yellowish_skin', 'Yellowish skin', false)
  ],
  [
    SymptomModel('blackheads', 'Blackheads', false),
    SymptomModel('blister', 'Blister', false),
    SymptomModel('bruising', 'Bruising', false),
    SymptomModel('cold_hands_and_feets', 'Cold hands and feets', false),
    SymptomModel('dischromic_patches', 'Dischromic patches', false),
    SymptomModel('drying_and_tingling_lips', 'Drying and tingling lips', false),
    SymptomModel('inflammatory_nails', 'Inflammatory nails', false),
    SymptomModel('internal_itching', 'Internal itching', false),
    SymptomModel('itching', 'Itching', false),
    SymptomModel('nodal_skin_eruptions', 'Nodal skin eruptions', false),
    SymptomModel('puffy_face_and_eyes', 'Puffy face and eyes', false),
    SymptomModel('pus_filled_pimples', 'Pus filled pimples', false),
    SymptomModel('pus-filled_pimples', 'Pus-filled pimples', false),
    SymptomModel('red_sore_around_nose', 'Red sore around nose', false),
    SymptomModel('red_spots_over_body', 'Red spots over body', false),
    SymptomModel('scurrying', 'Scurrying', false),
    SymptomModel('silver_like_dusting', 'Silver like dusting', false),
    SymptomModel('skin_peeling', 'Skin peeling', false),
    SymptomModel('skin_rash', 'Skin rash', false),
    SymptomModel('small_dents_in_nails', 'Small dents in nails', false),
    SymptomModel('ulcers_on_tongue', 'Ulcers on tongue', false),
    SymptomModel('watering_from_eyes', 'Watering from eyes', false),
    SymptomModel('yellow_crust_ooze', 'Yellow crust ooze', false),
    SymptomModel('yellowish_skin', 'Yellowish skin', false)
  ],
  [
    SymptomModel('altered_sensorium', 'Altered sensorium', false),
    SymptomModel('blurred_and_distorted_vision', 'Blurred and distorted vision', false),
    SymptomModel('coma', 'Coma', false),
    SymptomModel('dizziness', 'Dizziness', false),
    SymptomModel('fatigue', 'Fatigue', false),
    SymptomModel('headache', 'Headache', false),
    SymptomModel('loss_of_balance', 'Loss of balance', false),
    SymptomModel('loss_of_smell', 'Loss of smell', false),
    SymptomModel('malaise', 'Malaise', false),
    SymptomModel('pain_behind_the_eyes', 'Pain behind the eyes', false),
    SymptomModel('prominent_veins_on_calf', 'Prominent veins on calf', false),
    SymptomModel('spinning_movements', 'Spinning movements', false),
    SymptomModel('unsteadiness', 'Unsteadiness', false),
    SymptomModel('watering_from_eyes', 'Watering from eyes', false),
    SymptomModel('weakness_of_one_body_side', 'Weakness of one body side', false),
    SymptomModel('yellowing_of_eyes', 'Yellowing of eyes', false)
  ],
  [
    SymptomModel('back_pain', 'Back pain', false),
    SymptomModel('brittle_nails', 'Brittle nails', false),
    SymptomModel('cramps', 'Cramps', false),
    SymptomModel('enlarged_thyroid', 'Enlarged thyroid', false),
    SymptomModel('hip_joint_pain', 'Hip joint pain', false),
    SymptomModel('joint_pain', 'Joint pain', false),
    SymptomModel('knee_pain', 'Knee pain', false),
    SymptomModel('movement_stiffness', 'Movement stiffness', false),
    SymptomModel('muscle_pain', 'Muscle pain', false),
    SymptomModel('muscle_wasting', 'Muscle wasting', false),
    SymptomModel('muscle_weakness', 'Muscle weakness', false),
    SymptomModel('neck_pain', 'Neck pain', false),
    SymptomModel('painful_walking', 'Painful walking', false),
    SymptomModel('stiff_neck', 'Stiff neck', false),
    SymptomModel('sunken_eyes', 'Sunken eyes', false),
    SymptomModel('swelled_lymph_nodes', 'Swelled lymph nodes', false),
    SymptomModel('swelling_joints', 'Swelling joints', false),
    SymptomModel('swollen_blood_vessels', 'Swollen blood vessels', false),
    SymptomModel('swollen_extremeties', 'Swollen extremeties', false),
    SymptomModel('swollen_legs', 'Swollen legs', false),
    SymptomModel('weakness_in_limbs', 'Weakness in limbs', false),
    SymptomModel('weakness_of_one_body_side', 'Weakness of one body side', false)
  ],
  [
    SymptomModel('abnormal_menstruation', 'Abnormal menstruation', false)
  ],
  [
    SymptomModel('anxiety', 'Anxiety', false),
    SymptomModel('depression', 'Depression', false),
    SymptomModel('excessive_hunger', 'Excessive hunger', false),
    SymptomModel('extra-marital_contacts', 'Extra-marital contacts', false),
    SymptomModel('irritability', 'Irritability', false),
    SymptomModel('lack_of_concentration', 'Lack of concentration', false),
    SymptomModel('lethargy', 'Lethargy', false),
    SymptomModel('mood_swings', 'Mood swings', false),
    SymptomModel('restlessness', 'Restlessness', false),
    SymptomModel('slurred_speech', 'Slurred speech', false),
    SymptomModel('unsteadiness', 'Unsteadiness', false),
    SymptomModel('visual_disturbances', 'Visual disturbances', false)
  ],
  [
    SymptomModel('chills', 'Chills', false),
    SymptomModel('family_history', 'Family history', false),
    SymptomModel('high_fever', 'High fever', false),
    SymptomModel('history_of_alcohol_consumption', 'History of alcohol consumption', false),
    SymptomModel('mild_fever', 'Mild fever', false),
    SymptomModel('obesity', 'Obesity', false),
    SymptomModel('receiving_blood_transfusion', 'Receiving blood transfusion', false),
    SymptomModel('receiving_unsterile_injections', 'Receiving unsterile injections', false),
    SymptomModel('scurring', 'Scurring', false),
    SymptomModel('shivering', 'Shivering', false),
    SymptomModel('sweating', 'Sweating', false),
    SymptomModel('toxic_look_(typhos)', 'Toxic look (typhos)', false),
    SymptomModel('weight_gain', 'Weight gain', false),
    SymptomModel('weight_loss', 'Weight loss', false)
  ]];

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    double w = screenSize.width;
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body:Stack(
            children: <Widget>[
              Image.asset(r'assets\images\prognosisinput.png',
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
                    finalsend.clear();
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => const DesktopScaffold()));
                  }
                    ),
              ),
              Positioned(
                left: 100,
                top: 240,
                child: SizedBox(
                  width: 850,
                  height: 400,
                  child: Expanded(
                    child: ListView.builder(
                      itemCount: categories.length,
                      itemBuilder: (context, index){
                        return Card(
                          child: ExpansionTile(
                            title: Text(
                              categories[index].toString(),                              
                              style: const TextStyle(
                                fontSize: 22,
                                fontFamily: 'Montserrat_Medium',
                                color: Color(0xFF4561FE)
                              ),
                            ),
                            children: [
                              SizedBox(
                                height: 300,
                                child: ListView.builder(
                                  itemCount: symptom[index].length,
                                  itemBuilder: (context, index1){
                                    return symptomitem(index, index1);
                                  }
                                  ),
                              )
                            ],
                          ),
                        );
                      }
                      ),
                  ),
                ) 
              ),
              Positioned(
              left: w*0.225,
              top: w*0.4304,
              child: SizedBox(
                width: w*0.1653,
                height: w*0.0355,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => AnalyzePage(finallist: finalsend)));
                  },
                  style: ElevatedButton.styleFrom(
                    side: const BorderSide(
                      color: Color(0xFF4561FE),
                    ),
                    backgroundColor: const Color(0xFF4561FE),
                    shape: const StadiumBorder()
                    ),
                  child: Text(
                    'Predict',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'Montserrat_Medium',
                      fontSize: w*0.018,
                      color: const Color(0xFFFFFFFF),
                    ),
                    ),
                  ),
            ))
          ]
        )
    );
  }

  Widget symptomitem(int index, int index1){
    String name = symptom[index][index1].name;
    String dispname = symptom[index][index1].dispname;
    bool checked = symptom[index][index1].selected;
    return ListTile(
      title: Text(dispname,
        textAlign: TextAlign.left,
        style: const TextStyle(
          fontFamily: 'Montserrat_Medium',
          color: Color(0xFF4561FE),
            fontSize: 20),),
      trailing: checked
          ?const Icon(Icons.check_circle, color: Color(0xFF4561FE),)
          :const Icon(Icons.check_circle_outline, color:Color(0xFFFFFFFF),),
      onTap: () {
        setState(() {
          if (finalsend.contains(name)){
            symptom[index][index1].selected = !symptom[index][index1].selected;
            finalsend.removeWhere((element) => element == name);
          }
          else{
            symptom[index][index1].selected = !symptom[index][index1].selected;
            finalsend.add(name);
          }
        });
      },
    );
  }
}