import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:url_launcher/url_launcher.dart' as url_launcher;
import 'mobile_about.dart';
import 'mobile_disclaimer.dart';
import 'mobile_diseaselist.dart';
import 'mobile_medicinelist.dart';
import 'mobile_prognosisin.dart';
import 'mobile_symptomslist.dart';

Color backgroundColor = const Color(0xFFFFFFFF);
Color accColor = const Color(0xFF4561FE);
Color dropColor = const Color(0xFFFD727E);

List<String> diseases = ['fungal infection', 'allergy', 'gerd', 'chronic cholestasis', 'peptic ulcer', 'aids', 'diabetes',
  'gastroenteritis', 'bronchial asthma', 'hypertension', 'migraine', 'cervical spondylosis', 'paralysis', 'jaundice', 'malaria',
  'chicken pox', 'dengue', 'typhoid', 'hepatitis a', 'hepatitis b', 'hepatitis c', 'hepatitis d', 'hepatitis e',
  'alcoholic hepatitis', 'tuberculosis', 'common cold', 'pneumonia', 'hemmorhoids', 'heart attack', 'varicose veins',
  'hypothyroidism', 'hyperthyroidism', 'hypoglycemia', 'osteoarthristis', 'arthritis', 'vertigo', 'acne',
  'urinary tract infection', 'psoriasis', 'impetigo', 'anaemia', 'chikungunya', 'conjunctivitis', 'covid-19', 'dehydration',
  'diarrhea', 'food poisioning', 'insomnia', 'malnutrition'];
List<String> symptoms = [];
List<String> medicines = [];

List<String> search = diseases + symptoms + medicines;

List imageList = [
  {'path':"assets/images/slider1_img.png"},
  {'path':"assets/images/slider2_img.png"},
  {'path':"assets/images/slider3_img.png"},
  {'path':"assets/images/slider4_img.png"}
];

List gridbuttonsname = [
  "Prognosis", 
  "Disclaimer",
  "Symptoms",
  "Diseases",
  "Medicines",
  "About"
];

List gridbuttonsicon = [
  MdiIcons.stethoscope,
  MdiIcons.formDropdown,
  MdiIcons.thermometerAlert,
  MdiIcons.virus,
  MdiIcons.pill,
  MdiIcons.diversify
];

List gridnav = [
  const MobilePrognosisInputPage(),
  const MobileDisclaimerPage(),
  const MobileSymptomPage(),
  const MobileDiseasePage(),
  const MobileMedicinePage(),
  const MobileAboutPage(),
];

String capitalize(String str) {
  return "${str[0].toUpperCase()}${str.substring(1).toLowerCase()}";
}

class MobileScaffold extends StatefulWidget {
  const MobileScaffold({super.key});

  @override
  State<MobileScaffold> createState() => _MobileScaffoldState();
}

class _MobileScaffoldState extends State<MobileScaffold> {

  final CarouselController carouselController = CarouselController();

  @override
  void initState() {
    super.initState();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: accColor,
        shadowColor: Colors.transparent,
        centerTitle: true,
        elevation: 0,
        title: Text(
          'Doctorify',
          style: TextStyle(
            fontFamily: 'Montserrat-Light',
            fontSize: 24,
            color: backgroundColor
          ),
        ),
        leading: IconButton(
            icon: const Icon(Icons.account_circle),
            onPressed: () {

          },
        ),
        actions: [
          Padding(
            padding: EdgeInsets.all(10),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: dropColor,
                textStyle: TextStyle(
                fontSize: 15,
                ),
                shape: const StadiumBorder(),
                minimumSize: Size(2, 1)
              ),
              onPressed: () {
                Uri phoneno = Uri.parse('tel:102');
                url_launcher.launchUrl(phoneno);
                },
              child: const Text(
                "SOS"
              )
            ),
          ),
          IconButton(
            icon: const Icon(Icons.notifications),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset('assets/vectors/home_vec.png'),
            Padding(
              padding: EdgeInsets.all(15),
              child: Autocomplete<String>(
                optionsBuilder: (TextEditingValue textEditingValue) {
                  
                  if(textEditingValue.text == ""){
                    return const Iterable<String>.empty();
                  }
                  return search.where((String item){
                    return item.contains((textEditingValue.text));
                  }
                  );
                },
                fieldViewBuilder: (context, controller, focusNode, onEditingComplete){
                  return TextField(
                    controller: controller,
                    focusNode: focusNode,
                    onEditingComplete: onEditingComplete,
                    decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.search),
                      hintText: "Search...",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                        borderSide: BorderSide(color: Colors.grey[300]!)
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                        borderSide: BorderSide(color: accColor)
                      )
                    ),
                  );
                },
                onSelected: (String item) {
                  // searchbar search
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.all(5),
              child: CarouselSlider(
                carouselController: carouselController,
                options: CarouselOptions(
                  aspectRatio: 2,
                  autoPlay: true
                ),
                items: imageList.map((e) => Image.asset(e['path'],)).toList(),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8),
              child: GridView.builder(
                physics:const NeverScrollableScrollPhysics() ,
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3, crossAxisSpacing: 8, mainAxisSpacing: 8),
                itemCount: gridbuttonsname.length,
                itemBuilder: (_, index){
                  return InkWell(
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => gridnav[index]));
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 15, horizontal: 0),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: backgroundColor,
                        border: Border.all(
                          color: accColor,
                          width: 2
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Column(
                          children: [
                            Icon(
                              gridbuttonsicon[index],
                              color: accColor,
                              size: 35,
                              ),
                            Text(
                              gridbuttonsname[index],
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: accColor,
                                fontFamily: "Montserrat-Light",
                                fontSize: 20
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                }
              )
            )
          ]
        )
      )
    );
  }
}