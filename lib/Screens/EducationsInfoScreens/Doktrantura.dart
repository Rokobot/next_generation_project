import 'package:flutter/material.dart';
import '../../consts/infoPage.dart';

class Doktrantura extends StatefulWidget {
  const Doktrantura({super.key});

  @override
  State<Doktrantura> createState() => _DoktranturaState();
}

class _DoktranturaState extends State<Doktrantura> {
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
Doktorantura hazırlığı
Doktorantura ali təhsilin ən yüksək səviyyəsi, doktorluq elmi dərəcəsinin alınmasını həyata
 keçirən yüksək səviyyəli elmi kadr hazırlığı formasıdır və elmi kadrların hazırlanmasını, iхtisas və elmi dərəcələrin yüksəldilməsini təmin edir.Doktoranturaya hazırlıq proqramımız 3 fənndən Fəlsəfə,Xarici dil və İxtisas fənlərindən ibarətdir.
                  """,
                  textBody: 'Doktorantura',
                  child: Image.asset('ilustrations/doktrntra.png',),),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
