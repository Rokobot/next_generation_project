import 'package:flutter/material.dart';
import 'package:onboarding/onboarding.dart';

import '../OnBoarding/onboarding.dart';
import '../consts/consts.dart';


class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [Color(0XFF0F1323), Color(0XFF0e6352)], begin: Alignment.topCenter, end: Alignment.bottomCenter)
          ),
        child: SafeArea(
          child: OnBoarding()
        ),
      )
    );
  }
}

