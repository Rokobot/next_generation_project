import 'package:flutter/material.dart';

import '../../consts/infoPage.dart';

class Magistratura extends StatefulWidget {
  const Magistratura({super.key});

  @override
  State<Magistratura> createState() => _MagistraturaState();
}

class _MagistraturaState extends State<Magistratura> {
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
6 ildən artıqdır ki, fəaliyyət göstərən “Next Generation” Magistratura hazırlığı istiqaməti üzrə öz uğur faizi ilə daim seçilmişdir. 
Magistratura hazırlığı sahəsində illərin təcrübəsinə malik müəllimlərin əməyi nəticəsində hər il bu sahə uğurlarımız davam edir.
Hər il avqust ayının 1-dən etibarən Magistr hazırlığımız üzrə qeydiyyat başlayır. 
“Next Generation” magistr hazırlığında 2024-2025-cü tədris ili üçün qəbul elan edir.
* Təcrübəli müəllim heyəti
* 8-10 nəfərlik qruplar və fərdi dərslər
* Hər fənn həftədə 2 dəfə 90 dəqiqə olmaqla tədris olunur.
Magistraturada aşağıdakı fənnlər tədris olunur.
 Məntiq, 
İnformatika 
Xarici dil



Magistraturada aşağıdakı fənnlər tədris olunur.
 Məntiq, 
İnformatika 
Xarici dil
""",
                    textBody: 'Magistratura',
                    child: Image.asset('ilustrations/magistr.png',),),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
