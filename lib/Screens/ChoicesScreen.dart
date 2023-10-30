import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:next_generation/Screens/EducationsInfoScreens/Abituryent.dart';
import 'package:next_generation/Screens/EducationsInfoScreens/DobletQullugu.dart';
import 'package:next_generation/Screens/EducationsInfoScreens/Doktrantura.dart';
import 'package:next_generation/Screens/EducationsInfoScreens/IELTS.dart';
import 'package:next_generation/Screens/EducationsInfoScreens/Magistratura.dart';
import 'package:next_generation/Screens/EducationsInfoScreens/SabahQrupu.dart';
import 'package:next_generation/consts/consts.dart';

import 'EducationsInfoScreens/DilKurslari.dart';
import 'EducationsInfoScreens/YOS.dart';

class ChoicesScreen extends StatefulWidget {
  const ChoicesScreen({super.key});

  @override
  State<ChoicesScreen> createState() => _ChoicesScreenState();
}

class _ChoicesScreenState extends State<ChoicesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Color(0XFF0F1323), Color(0XFF2699CA)],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter)),
        child: Center(
          child: Padding(
              padding: EdgeInsets.all(10.0),
              child: ListView(
                physics: BouncingScrollPhysics(),
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        color: Colors.transparent,
                        height: 150,
                        width: double.infinity,
                        child: CarouselSlider(
                          items: [
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  gradient: LinearGradient(colors: [
                                    Color(0xFFb8112c),
                                    Color(0XFF730dd9)
                                  ])),
                              child: Padding(
                                padding: EdgeInsets.all(10),
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: Container(
                                        height: 200,
                                        width: 200,
                                        child: Card(
                                          elevation:40 ,
                                          color: Colors.transparent,

                                          child: CircleAvatar(
                                            radius: 100,
                                            child: ClipRRect(
                                              borderRadius: BorderRadius.circular(100),
                                              child: Image.asset(
                                                  'ilustrations/rehber_ph.jpeg'),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Expanded(
                                      child: designText(
                                          objectText: Text(
                                            'Rəhbər\nƏliyeva Gülşən',
                                            style: TextStyle(fontSize: 24),
                                          )),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                gradient: LinearGradient(colors: [
                                  Color(0XFF730dd9),
                                  Color(0XFFde390b)
                                ]),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Center(
                                  child: Row(
                                    children: [
                                      SizedBox(width: 10,),
                                      Expanded(
                                        child: Center(
                                          child: designText(
                                              objectText: Text(
                                                '100% Müvəffəqiyyət',
                                                style: TextStyle(fontSize: 24),
                                              )),
                                        ),
                                      ),
                                      Expanded(child: Image.asset('ilustrations/muveffeqiyyet.png'))
                                    ],
                                  )),
                            ),
                            Container(
                                decoration: BoxDecoration(
                                    gradient: LinearGradient(colors: [
                                      Color(0XFFde390b),
                                      Color(0xFFb8112c)
                                    ]),
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.orange),
                                child: Center(
                                    child: designText(
                                        objectText: Text(
                                          'Ödənişsiz sınaq dərsləri!',
                                          style: TextStyle(fontSize: 24),
                                        )))),
                            Container(
                              decoration: BoxDecoration(
                                gradient: LinearGradient(colors: [
                                  Color(0XFF730dd9),
                                  Color(0XFFde390b)
                                ]),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Center(
                                  child: Row(
                                    children: [
                                     SizedBox(width: 10,),

                                      Expanded(
                                        child: Center(
                                          child: designText(
                                              objectText: Text(
                                                'Uzaqdasan ? \nOnline dərslər var!',
                                                style: TextStyle(fontSize: 24),
                                              )),
                                        ),
                                      ),
                                      Expanded(child: Image.asset('ilustrations/Online.png'))
                                    ],
                                  )),
                            ),
                          ],
                          options: CarouselOptions(
                            height: 180.0,
                            enlargeCenterPage: true,
                            autoPlay: true,
                            autoPlayCurve: Curves.fastOutSlowIn,
                            enableInfiniteScroll: true,
                            viewportFraction: 0.85,
                            //autoPlayAnimationDuration: Duration(seconds: 1),
                            autoPlayInterval: Duration(seconds: 2)
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      designText(
                          objectText: Text(
                        'Proqramlar',
                        style: TextStyle(fontSize: 24),
                      )),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Expanded(
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Magistratura()));
                              },
                              child: Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.3,
                                  height:
                                      MediaQuery.of(context).size.height * 0.35,
                                  decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                          colors: [
                                            Color(0XFFB3D5FB),
                                            Colors.transparent
                                          ],
                                          begin: Alignment.topCenter,
                                          end: Alignment.bottomCenter),
                                      borderRadius: BorderRadius.circular(10)),
                                  child: CustomColumn(
                                      child: Image.asset(
                                          'ilustrations/magistr.png'),
                                      text: 'Magistratura')),
                            ),
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          Expanded(
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Doktrantura()));
                              },
                              child: Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.3,
                                  height:
                                      MediaQuery.of(context).size.height * 0.35,
                                  decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                          colors: [
                                            Color(0XFFB3D5FB),
                                            Colors.transparent
                                          ],
                                          begin: Alignment.topCenter,
                                          end: Alignment.bottomCenter),
                                      borderRadius: BorderRadius.circular(10)),
                                  child: CustomColumn(
                                      child: Image.asset(
                                          'ilustrations/doktrntra.png'),
                                      text: 'Doktorantura')),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Expanded(
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => DovletQullugu()));
                              },
                              child: Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.3,
                                  height:
                                      MediaQuery.of(context).size.height * 0.35,
                                  decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                          colors: [
                                            Color(0XFFB3D5FB),
                                            Colors.transparent
                                          ],
                                          begin: Alignment.topCenter,
                                          end: Alignment.bottomCenter),
                                      borderRadius: BorderRadius.circular(10)),
                                  child: CustomColumn(
                                      child: Image.asset(
                                          'ilustrations/dovlet.png'),
                                      text: 'Dövlət Qulluğu')),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => IELTS()));
                              },
                              child: Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.3,
                                  height:
                                      MediaQuery.of(context).size.height * 0.35,
                                  decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                          colors: [
                                            Color(0XFFB3D5FB),
                                            Colors.transparent
                                          ],
                                          begin: Alignment.topCenter,
                                          end: Alignment.bottomCenter),
                                      borderRadius: BorderRadius.circular(10)),
                                  child: CustomColumn(
                                      child:
                                          Image.asset('ilustrations/IELTS.png'),
                                      text: 'IELTS')),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Expanded(
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Abituryent()));
                              },
                              child: Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.3,
                                  height:
                                      MediaQuery.of(context).size.height * 0.35,
                                  decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                          colors: [
                                            Color(0XFFB3D5FB),
                                            Colors.transparent
                                          ],
                                          begin: Alignment.topCenter,
                                          end: Alignment.bottomCenter),
                                      borderRadius: BorderRadius.circular(10)),
                                  child: CustomColumn(
                                      child: Image.asset(
                                          'ilustrations/abituryent.png'),
                                      text: 'Abituriyent')),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => DilKurslari()));
                              },
                              child: Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.3,
                                  height:
                                      MediaQuery.of(context).size.height * 0.35,
                                  decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                          colors: [
                                            Color(0XFFB3D5FB),
                                            Colors.transparent
                                          ],
                                          begin: Alignment.topCenter,
                                          end: Alignment.bottomCenter),
                                      borderRadius: BorderRadius.circular(10)),
                                  child: CustomColumn(
                                      child:
                                          Image.asset('ilustrations/Dil.png'),
                                      text: 'Dil kursları')),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Expanded(
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => YOS()));
                              },
                              child: Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.3,
                                  height:
                                      MediaQuery.of(context).size.height * 0.35,
                                  decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                          colors: [
                                            Color(0XFFB3D5FB),
                                            Colors.transparent
                                          ],
                                          begin: Alignment.topCenter,
                                          end: Alignment.bottomCenter),
                                      borderRadius: BorderRadius.circular(10)),
                                  child: CustomColumn(
                                      child: Image.asset(
                                          'ilustrations/yos.png'),
                                      text: 'YÖS')),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => SabahQrupu()));
                              },
                              child: Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.3,
                                  height:
                                      MediaQuery.of(context).size.height * 0.35,
                                  decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                          colors: [
                                            Color(0XFFB3D5FB),
                                            Colors.transparent
                                          ],
                                          begin: Alignment.topCenter,
                                          end: Alignment.bottomCenter),
                                      borderRadius: BorderRadius.circular(10)),
                                  child: CustomColumn(
                                      child:
                                          Image.asset('ilustrations/sabahQrupu.png'),
                                      text: 'Sabah qrupu')),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              )),
        ),
      )),
    );
  }
}

/*

 */
