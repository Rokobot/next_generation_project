import 'dart:async';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:next_generation/consts/consts.dart';
import 'package:rive/rive.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Body extends StatefulWidget {
  const Body({
    super.key,
  });

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  int? viewS;

  @override
  void initState() {
    super.initState();
    // Call the asynchronous method to fetch data from SharedPreferences
    _loadSharedPreferences();
  }

  // Asynchronous method to load data from SharedPreferences
  _loadSharedPreferences() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      viewS = prefs.getInt('viewS');
    });

    // After loading data, navigate based on the value of viewS
    Timer(Duration(seconds: 4), () {
      Navigator.pushReplacementNamed(
        context,
        viewS == 0 || viewS == null ? '/SecondPage' : '/BottomNavScreen',
      );
    });
  }
  @override
  Widget build(BuildContext context) {


    return Scaffold(
      backgroundColor: Colors.blue,
      body: SafeArea(
        child: Stack(
          children: [
            RiveAnimation.asset('ilustrations/backgroundAnimation.riv'),
            BackdropFilter(filter: ImageFilter.blur(sigmaX: 100.0, sigmaY: 100.0),
            child: Center(
              child: Card(
                color: Colors.transparent,
                elevation: 70,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    designText(objectText:  Text('Next Generation', style: TextStyle(fontSize: 40),)),
                    designText(objectText: Text('Tədris Mərkəzi', style: TextStyle(fontSize:20),), ),
                    SizedBox(
                      height: 60,
                    ),
                    CircleAvatar(
                      radius: 80,
                      child: ClipRRect(
                        borderRadius:  BorderRadius.circular(100),
                        child: Image.asset('asset/nextgn.jpg'),
                      ),
                    )
                  ],
                ),
              ),
            ),),
          ],
        )
      ),
    );
  }
}



