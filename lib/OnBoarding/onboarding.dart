import 'dart:async';

import 'package:flutter/material.dart';
import 'package:next_generation/OnBoarding/OnBoardingPageList.dart';
import 'package:onboarding/onboarding.dart';
import 'package:shared_preferences/shared_preferences.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({
    super.key,
  });

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  late int index;
  @override
  void initState() {
    super.initState();
    index = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [Color(0XFF0F1323), Color(0XFF2699CA)], begin: Alignment.topCenter, end: Alignment.bottomCenter)
          ),
          child: Onboarding(
            pages: OnBoardingPageList,
            onPageChange: (int pageInex) {
              setState(() {
                index = pageInex;
              });
            },
            startPageIndex: 0,
            footerBuilder: ((context, DragDistance, pagesLength, setIndex) {
              return Container(
                height: 50,
                margin: EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CustomIndicator(
                        netDragPercent: DragDistance,
                        indicator: Indicator(
                          activeIndicator: ActiveIndicator(
                              color: Color(0XFF020112), borderWidth: 0.5),
                          closedIndicator:
                              ClosedIndicator(color: Color(0XFF09ebbe)),
                          indicatorDesign: IndicatorDesign.polygon(
                            polygonDesign: PolygonDesign(
                              polygon: DesignType.polygon_circle,
                            ),
                          ),
                        ),
                        pagesLength: pagesLength),
                  ],
                ),
              );
            }),
          ),
        ),
        floatingActionButton: index == 2 ? FloatingActionButton.extended(
          label: Row(
            children: [
              Icon(Icons.skip_next),
              SizedBox(
                width: 1,
              ),
              Text(
                'skip',
                style: TextStyle(color: Colors.black),
              )
            ],
          ),
          focusColor: Color(0XFF09ebbe),
          splashColor: Colors.white,
          onPressed: () async {
            SharedPreferences prefs = await SharedPreferences.getInstance();
            await prefs.setInt('viewS', 1);
            Navigator.pushReplacementNamed(context, '/BottomNavScreen');
          },
        ): Container());
  }
}
