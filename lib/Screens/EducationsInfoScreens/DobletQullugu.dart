import 'package:flutter/material.dart';
import '../../consts/infoPage.dart';



class DovletQullugu extends StatefulWidget {
  const DovletQullugu({super.key});

  @override
  State<DovletQullugu> createState() => _DovletQulluguState();
}

class _DovletQulluguState extends State<DovletQullugu> {
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
Dövlət Qulluğuna hazırlıq:
Dövlət Qulluğuna Qəbul Qaydası Azərbaycan Respublikası Qanununun 28.1-ci maddəsinə əsasən dövlət qulluğuna qəbul müsabiqə əsasında aparılır. Müsabiqə, test imtahanından və müsahibədən ibarətdir.

Next Generation tədris mərkəzimizdə  Dövlət Qulluğu BB və BA kategoriyası üzrə
imtahana hazırlıq həyata keçirir. İmtahana 4 fənn blokundan suallar salınır:
1. Qanunvericilik – 40 (testdə qanunvericilik üzrə A, B, C, D olmaqla variant sayı 4 olur, digərlərində isə 5 variant),
2. Məntiq – 30,
3. Azərbaycan dili – 15,
4. İnformatika -15  
Bu 4 fənnin hər birindən peşəkar, öz sahəsində mütəxəssis müəllim tapmaq çətindir. Lakin NG kursumuzun öz peşəkar müəllim kollektivinə, dərs keyfiyyətinə güvənərək, sizin Dövlət Qulluğuna qəbul olacacağınıza 100%  tam zəmanət verir.
- Hazırlıqlarımız həm online, həm də əyani  şəkildə tədris olunur.
Əyani və online yeni açılmış dövlət qulluğu qruplarımız var. Hansı ki, peşəkar müəllimlər tərəfindən keçirilir. Qruplarımızda ən çox halda 10 tələbənin iştirakına icazə verilir.
Online dərslərimiz google meet proqramı ilə görüntülü şəkildə keçirilir.
- Dərslər ixtisas və təlim strategiyaları və metodika fənləri üzrə peşəkar müəllim kollektivi
tərəfindən aparılır.
- Qəbul səviyyəsində ayda 1 dəfə ödənişli mövzu və ümumi sınaq imtahanları təşkil
olunur. Sınaq imtahanlarından sonra hər hansı müvzu üzrə zəiflik olarsa həmin zəiflik aradan qalxana qədər əlavə dərslər təyin olunur.
- Hər fənn həftədə 2 dəfə 1 saat 30  dəqiqə tədris olunur.
- Keyfiyyətli tədris və münasib qiymətlər sizə təklif olunur.Bu ayın sonuna kimi endirimli
qiymətlərlə qeydiyyatdan keçib dərslərimizdə iştirak edə bilərsiniz.
                  """,
                  textBody: 'Dövlət Qulluğu',
                  child: Image.asset('ilustrations/dovlet.png',),),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
