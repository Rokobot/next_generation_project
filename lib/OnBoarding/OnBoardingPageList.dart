import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:onboarding/onboarding.dart';

import '../consts/consts.dart';

final OnBoardingPageList = [
  PageModel(
      widget: Center(
    child: Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(30.0),color: Colors.black,),
      margin: EdgeInsets.all(10.0),

      child: ClipRRect(
        borderRadius: BorderRadius.circular(20.0),
        child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 9000, sigmaY: 9000),
            child: SingleChildScrollView(
              controller: ScrollController(),
              child: Column(
                children: [
                  designText(
                    objectText: Text(
                      'Next Generation',
                      style: TextStyle(fontSize: 26),
                    ),
                  ),
                  designText(
                    objectText: Text(
                      'Tədris Mərkəzi',
                      style: TextStyle(fontSize: 17),
                    ),
                  ),
                  Container(
                    width: 400,
                    height: 400,
                    margin: EdgeInsets.all(5.0),
                    child: Image.asset('ilustrations/kefiyyet.png'),
                  ),
                  designText(
                    objectText: Text(
                      'Yüksək kefiyyət, sərfəli təklif',
                      style: TextStyle(fontSize: 21),
                    ),
                  ),
                ],
              ),
            )
        ),
      ),
    ),
  )),
  PageModel(
      widget: Center(
    child: Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(30.0),color: Colors.black,),
      margin: EdgeInsets.all(10.0),
      child:  ClipRRect(
        borderRadius: BorderRadius.circular(20.0),
        child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 9000, sigmaY: 9000),
            child:SingleChildScrollView(
        controller: ScrollController(),
        child: Column(
          children: [
            designText(
              objectText: Text(
                'Next Generation',
                style: TextStyle(fontSize: 26),
              ),
            ),
            designText(
              objectText: Text(
                'Tədris Mərkəzi',
                style: TextStyle(fontSize: 17),
              ),
            ),
            Container(
              width: 400,
              height: 400,
              margin: EdgeInsets.all(5.0),
              child: Image.asset('ilustrations/cesid.png'),
            ),
            designText(
              objectText: Text(
                'Geniş proqram çeşidliliyi',
                style: TextStyle(fontSize: 21),
              ),
            ),
          ],
        ),
      ),
        ),
      ),
    ),
  )),
  PageModel(
      widget: Center(
    child: Container(
      margin: EdgeInsets.all(10.0),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(30.0),color: Colors.black,),
      child:  ClipRRect(
        borderRadius: BorderRadius.circular(20.0),
        child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 9000, sigmaY: 9000),
            child:SingleChildScrollView(
              controller: ScrollController(),
              child: Column(
                children: [
                  designText(
                    objectText: Text(
                      'Next Generation',
                      style: TextStyle(fontSize: 26),
                    ),
                  ),
                  designText(
                    objectText: Text(
                      'Tədris Mərkəzi',
                      style: TextStyle(fontSize: 17),
                    ),
                  ),
                  Container(
                    width: 400,
                    height: 400,
                    margin: EdgeInsets.all(5.0),
                    child: Image.asset('ilustrations/serbest.png'),
                  ),
                  designText(
                    objectText: Text(
                      'Sərbəst həllər',
                      style: TextStyle(fontSize: 21),
                    ),
                  ),
                ],
              ),
            ),
        ),
      ),
    ),
  )),
];
