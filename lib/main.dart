
import 'package:next_generation/Screens/ChoicesScreen.dart';
import 'package:next_generation/Screens/EducationsInfoScreens/DobletQullugu.dart';
import 'package:next_generation/Screens/EducationsInfoScreens/Magistratura.dart';
import 'package:next_generation/Screens/IntroScreen.dart';
import 'package:flutter/material.dart';
import 'package:next_generation/Screens/OnboardingScreen.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'Screens/EducationsInfoScreens/BottomNavScreen.dart';
import 'Screens/EducationsInfoScreens/Doktrantura.dart';
import 'Screens/EducationsInfoScreens/IELTS.dart';

int? initScreen;
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  initScreen = (await prefs.get('viewS')) as int?;
  print('viewS ------------>>>> ${initScreen}');
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      
      debugShowCheckedModeBanner: false,
      routes: {
        '/SecondPage': (context) => SecondPage(),
        '/ChoicesScreen':(context) => ChoicesScreen(),
        '/MagistraturaScreen': (context) => Magistratura(),
        '/DovletQullugu': (context) => DovletQullugu(),
        '/IELTS': (context) => IELTS(),
        '/Doktrantura': (context) => Doktrantura(),
        '/BottomNavScreen':(context) => BottomNav(),
      },
      theme: ThemeData.dark(),
      home: Scaffold(
        body: Body(),
      ),
    );
  }
}


