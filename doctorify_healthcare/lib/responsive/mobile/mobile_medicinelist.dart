import 'dart:core';
import 'package:flutter/material.dart';
import 'mobile_scaffold.dart';

Color backgroundColor = const Color(0xFFFFFFFF);
Color accColor = const Color(0xFF4561FE);
Color dropColor = const Color(0xFFFD727E);

class MedicineList {
  String name;
  MedicineList(this.name);
}

class MobileMedicinePage extends StatefulWidget {
  const MobileMedicinePage({super.key});

  @override
  State<StatefulWidget> createState() {
    return MobileMedicinePageState();
  }
}

class MobileMedicinePageState extends State<MobileMedicinePage> {
  List<MedicineList> medicines = [
    MedicineList('Clotrimazole'),
    MedicineList("Levocetirizine"),
    MedicineList("Ranitidine"),
    MedicineList("Amoxycillin"),
    MedicineList("Esomeprazole"),
    MedicineList("Abacavir"),
    MedicineList("Human insulin"),
    MedicineList("Metronidazole"),
    MedicineList("Acebrophylline"),
    MedicineList("Benazepril"),
    MedicineList("Cyclobenzaprine"),
    MedicineList("Methylprednisolone"),
    MedicineList("Cholestyramine"),
    MedicineList("Chloroquine"),
    MedicineList("Acyclovir"),
    MedicineList("Kalmegh Dry Extract"),
    MedicineList("Azithromycin"),
    MedicineList("Equine Rabies Immunoglobulin"),
    MedicineList("Famciclovir"),
    MedicineList("pegylated interferon alpha 2a"),
    MedicineList("ribavirin"),
    MedicineList("Metadoxine"),
    MedicineList("Amikacin"),
    MedicineList("Paracetamol"),
    MedicineList("Haemophilus Influenzae Type B Capsular Polysaccharide"),
    MedicineList("Bupivacaine"),
    MedicineList("Acenocoumarol"),
    MedicineList("Proanthocyanidin"),
    MedicineList("Thyroxine"),
    MedicineList("Carbimazole"),
    MedicineList("Diazoxide"),
    MedicineList("Dexibuprofen"),
    MedicineList("Azathioprine"),
    MedicineList("Betahistine"),
    MedicineList("Acitretin"),
    MedicineList("Nitrofurantoin"),
    MedicineList("mupirocin"),
    MedicineList("Nandrolone Decanoate"),
    MedicineList("Cycloserine"),
    MedicineList("Favipiravir"),
    MedicineList("Dextrose"),
    MedicineList("Albendazole"),
    MedicineList("Loperamide"),
    MedicineList("Alprazolam"),
    MedicineList("Benfotiamine"),
    MedicineList("Ketoconazole"),
    MedicineList("Cetirizine"),
    MedicineList("Cimetidine"),
    MedicineList("Divaine"),
    MedicineList("Omeprazole"),
    MedicineList("Adefovir"),
    MedicineList("Insulin Glulisine"),
    MedicineList("Ondansetron"),
    MedicineList("Aminophylline"),
    MedicineList("Bisoprolol"),
    MedicineList("Pregabalin"),
    MedicineList("Nebivolol"),
    MedicineList("Naltrexone "),
    MedicineList("Primaquine"),
    MedicineList("Cefoperazone"),
    MedicineList("Freeze-dried Live Attenuated Hepatitis A Vaccine"),
    MedicineList("Recombinant Hepatitis B Surface Antigen"),
    MedicineList("Interferon Alpha 2B"),
    MedicineList("Balofloxacin"),
    MedicineList("Paracetamol+Cetirizine+Menthol+Phenylephrine"),
    MedicineList("Ceftaroline Fosamil"),
    MedicineList("Dibucaine"),
    MedicineList("Polidocanol"),
    MedicineList("Nicotinamide+Thyroxine+Vitamin B6 (Pyridoxine)"),
    MedicineList("Potassium Iodide"),
    MedicineList("Etoricoxib"),
    MedicineList("Celecoxib"),
    MedicineList("Buclizine"),
    MedicineList("Clofazimine"),
    MedicineList("Pefloxacin"),
    MedicineList("Calcipotriol"),
    MedicineList("cephalosporins,"),
    MedicineList("Darbepoetin alfa"),
    MedicineList("Ketotifen"),
    MedicineList("Remdesivir"),
    MedicineList("Sodium Chloride"),
    MedicineList("Bacillus Clausii"),
    MedicineList("Alfacalcidol"),
    MedicineList("Miconazole"),
    MedicineList("Azelastine"),
    MedicineList("Famotidine"),
    MedicineList("Brufen"),
    MedicineList("Lansoprazole"),
    MedicineList("Atazanavir"),
    MedicineList("Insulin Lispro Protamine"),
    MedicineList("Diphenoxylate "),
    MedicineList("Albuterol"),
    MedicineList("Imidapril"),
    MedicineList("Caffeine"),
    MedicineList("Prednisolone"),
    MedicineList("Amitriptyline"),
    MedicineList("Sulfadiazine"),
    MedicineList("Idoxuridine"),
    MedicineList("Erythromycin"),
    MedicineList("Human Rabies Immunoglobulin"),
    MedicineList("Hepatitis B Vaccine (rDNA)"),
    MedicineList("Sofosbuvir+Velpatasvir"),
    MedicineList("Ethambutol"),
    MedicineList("Caffeine+Paracetamol+Levocetirizine+Phenylephrine"),
    MedicineList("Pneumococcal Polysaccharide Vaccine"),
    MedicineList("Heparin"),
    MedicineList("Enalapril"),
    MedicineList("Hesperidin"),
    MedicineList("Liothyronine"),
    MedicineList("Propranolol"),
    MedicineList("Ketorolac"),
    MedicineList("Hydroxychloroquine"),
    MedicineList("Chlorpheniramine Maleate"),
    MedicineList("Clindamycin"),
    MedicineList("Prulifloxacin"),
    MedicineList("Clobetasol"),
    MedicineList("sulfamethoxazole "),
    MedicineList("Folic Acid+Cyanocobalamin"),
    MedicineList("Naphazoline"),
    MedicineList("Whole Virion, Inactivated Corona Virus vaccine"),
    MedicineList("Sodium Lactate"),
    MedicineList("Diloxanide"),
    MedicineList("Chlordiazepoxide"),
    MedicineList("Adenosylcobalamin")
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
                  "LIST OF\nMEDICINES",
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
                  child: ListView.builder(itemCount: medicines.length, itemBuilder: (BuildContext context, int index){
                    return medicineitem(medicines[index].name);}
                  ),
                ),
              )
            ]
        )
    );
  }

  Widget medicineitem(String name){
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