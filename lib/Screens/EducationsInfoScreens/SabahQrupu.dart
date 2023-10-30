import 'package:flutter/material.dart';
import '../../consts/infoPage.dart';

class SabahQrupu extends StatefulWidget {
  const SabahQrupu({super.key});

  @override
  State<SabahQrupu> createState() => _SabahQrupuState();
}

class _SabahQrupuState extends State<SabahQrupu> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        decoration: BoxDecoration(gradient: LinearGradient(begin: Alignment.topCenter, end: Alignment.bottomCenter, colors: [Color(0XFF0F1323), Color(0XFF2699CA)])),
        child: SafeArea(
          child: Column(
            children: [
              Expanded(
                child: CustomCard(
                  textDescription: """
•	İngilis dilində yüksək səviyyəli təhsil
•	Ortalamadan asılı olaraq əlavə təqaüd
•	Pulsuz yataqxana imkanı
•	İstedadlı gənclərə əlavə dəstəklər

Ali təhsil müəssisələrində I kurs tələbələrinin SABAH qruplarına qəbulu mərkəzləşdirilmiş qaydada üç mərhələli müsabiqə yolu ilə həyata keçirilir.
1.elektron ərizədəki göstəricilərin qiymətləndirilməsi 
2.test imtahanı 
3. müsahibə          
Test imtahanı 
1.Məntiq – 50 sual
2.İngilis Dili- 50 sual
                  """,
                  textBody: 'Sabah Qrupu',
                  child: Image.asset('ilustrations/sabahQrupu.png',),),
              ),

            ],
          ),
        ),
      ),
    );
  }
}

