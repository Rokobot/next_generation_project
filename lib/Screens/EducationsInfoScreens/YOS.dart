import 'package:flutter/material.dart';
import '../../consts/infoPage.dart';



class YOS extends StatefulWidget {
  const YOS({super.key});

  @override
  State<YOS> createState() => _YOSState();
}

class _YOSState extends State<YOS> {
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
YÖS kursu proqramlarımız:

9, 10 və 11-ci siniflər üçün YÖS imtahanlarına hazırlıq;

Üstünlüklərimiz

	 Professional müəllimlərdən dərs
	 Pulsuz dərs vəsaiti
	 Hər ay valideyn iclası
	 Hər ay imtahan təşkil edilməsi
                  """,
                  textBody: 'YÖS',
                  child: Image.asset('ilustrations/yos.png',),),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
