import 'dart:async';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({super.key});

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Color(0XFF0F1323), Color(0XFF2699CA)],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter)),
        child: SafeArea(
          child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(child: Container(width: MediaQuery.of(context).size.width*08,height: MediaQuery.of(context).size.height*0.7,child: Image.asset('ilustrations/xerite.png'),)),
              MaterialButton(
                color: Color(0XFF0de07a),
                onPressed: () async {
                  var mapUrl = Uri.parse("google.navigation:q=${40.376128},${49.811724}&mode=d");
                  if(await launchUrl(mapUrl)){
                  }else{}
                },
                child: Text('Məkan'),
              ),
              SizedBox(height: 30,),
            ],
          )),
        ),
      ),
    );
  }
}

