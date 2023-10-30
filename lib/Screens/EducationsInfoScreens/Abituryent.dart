import 'package:flutter/material.dart';
import '../../consts/infoPage.dart';



class Abituryent extends StatefulWidget {
  const Abituryent({super.key});

  @override
  State<Abituryent> createState() => _AbituryentState();
}

class _AbituryentState extends State<Abituryent> {
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
Abituriyent hazırlığı;

NG kursumuzda qrup dərsləri ilə bərabər bütün fənlər üzrə  abituriyent hazırlığı da təşkil edilir. Fərdi və qrup şəklində hazırlıq dərsləri təcrübəli müəllimlər tərəfindən fərdi dərslər üçün hazırlanmış xüsusi proqram əsasında keçirilir. Hazırlıq dərslərinin saatları abituriyentin istəklərinə görə cədvələ salınır.Keçirilən dərslərə uyğun həftəlik və aylıq sınaq imtahanları keçirilir.
	Dərslər tam və əhatəli şəkildə tədris olunur.
	Hər bir şagirdə fərdi şəkildə yanaşılır.
	Dərslər hər səviyyəyə uyğun təşkil olunur.
	Övladınızda ilk aydan nəticə görəcəyinizə 100% zəmanət verilir .
	Dərsin keyfiyyətindən əmin olmaq məqsədilə 1 dərs sınaq dərsimiz mövcuddur .
	Hər ay sonu bütün abituriyentlər üçün sınaq imtahanı təşkil olunur.
	Hər qrupda maksimum 6-8 nəfər olur.
                  """,
                  textBody: 'Abituriyent',
                  child: Image.asset('ilustrations/abituryent.png',),),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
