import 'package:flutter/material.dart';
import '../../consts/infoPage.dart';



class DilKurslari extends StatefulWidget {
  const DilKurslari({super.key});

  @override
  State<DilKurslari> createState() => _DilKurslariState();
}

class _DilKurslariState extends State<DilKurslari> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(gradient: LinearGradient(begin: Alignment.topCenter, end: Alignment.bottomCenter, colors: [Color(0XFF0F1323), Color(0XFF2699CA)])),
        child: SafeArea(
          child: Column(
            children: [
              Expanded(
                child: CustomCard(
                  textDescription: """
İngilis dili
Rus dili 
Alman dili
Fransız dili
İngilis dilini ən qısa vaxtda, yorulmadan, maraqlı metodlarla öyrənmək istəyirsənsə, deməli doğru yerdəsən.
Kursumuzda  həmçinin Xarici dil kursları da bütün yaş qrupları üzrə tədris olunur. 
Xarici dil biliklərinin inkişafı məqsədilə dərslər fərdi və qrup şəklində olmaqla həftədə 2 dəfə 1 saat 30 dəq keçilir.   
General english (ümumi ingilis dili) dərsləri də keçilir. Speaking (danışmaq), writing (yazmaq), listening (dinləmək) və reading (oxumaq) bacarıqları inkişaf etdirilir. Dərslər yüksək ixtisaslı müəllim tərəfindən tədris olunur. Dərslərin keyfiyyətinə tam zəmanət verilir.
                  """,
                  textBody: 'Dil Kursları',
                  child: Image.asset('ilustrations/Dil.png',),),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
