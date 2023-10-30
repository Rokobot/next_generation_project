import 'package:flutter/material.dart';

import '../../consts/infoPage.dart';



class IELTS extends StatefulWidget {
  const IELTS({super.key});

  @override
  State<IELTS> createState() => _IELTSState();
}

class _IELTSState extends State<IELTS> {
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
İELTS  İngilis dili səviyyəsini qiymətləndirmək üçün tərtib olunub. IELTS imtahanında Oxuma (Reading), Dinləmə (Listening), Danışıq (Speaking), Yazı (Writing) bilikləri sınağa çəkilir. Bu imtahana hazırlaşmaq üçün ilk öncə İntermediate səviyyəsində İngilis dili biliyiniz olması vacibdir. Bunu üçün artıq 8 ildir ki, Azərbaycanda fəaliyyət göstərən NG tədris mərkəzində IELTS imtahanlarına hazırlaşa bilərsiniz. Qazanılan təcrübə, xaricdən gətirlimiş metodik vəsaitlər, dərslərin ən müasir səviyyədə təşkili   sizin bu imtahana hazırlaşmanızda çətinliklərə son qoyacaq.  İELTS sertifikatı həmçinin xarici ölkədə yaşamaq istəyən namizədlərdən də tələb olunur. İmtahan ölkəmizdə yazılı formada təşkil olunur. Toplayacağınız ən yüksək nəticə 9 baldır. İmtahan 2 hissədən ibarətdir:
•	Academic
•	General
                  """,
                  textBody: 'IELTS',
                  child: Image.asset('ilustrations/IELTS.png',),),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
