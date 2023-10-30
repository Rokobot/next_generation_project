import 'dart:async';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../consts/infoPage.dart';

class Kitablar extends StatefulWidget {
  const Kitablar({super.key});

  @override
  State<Kitablar> createState() => _KitablarState();
}

class _KitablarState extends State<Kitablar> {

  Widget item(String text, String  path){
    return Container(
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          gradient: LinearGradient(
              colors: [Color(0XFF0F1323), Color(0XFF2699CA)],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter)),
      child: Card(
        //semanticContainer: true,
        elevation: 50,
        color: Colors.transparent,
        child: ExpansionTile(
          title: Text(text),
          children: [
            Container(width: 300, height:300, child: Image.asset(path)),
            SizedBox(height: 5,),
          ],
        ),
      ),
    );
  }

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
              child: ListView(
                physics: BouncingScrollPhysics(),
            children: [
              item('Informatika', 'ilustrations/info.jpeg'),
              SizedBox(height: 5,),
              item('Məntiq', 'ilustrations/mentiq.jpeg'),
              SizedBox(height: 5,),
              item('Qanunvericilik', 'ilustrations/qanun.jpeg'),
              SizedBox(height: 5,),
              item('İngilis Dili ', 'ilustrations/ingiliDili.jpeg'),
            ],
          )),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(

        backgroundColor: Colors.blue,
        icon: Icon(Icons.call, color: Colors.white,),
        onPressed: (){
          visitNewWhatsApp('+994513023222');
        }, label: Text('müraciət', style: TextStyle(color: Colors.white),),
      ),
    );
  }
}
