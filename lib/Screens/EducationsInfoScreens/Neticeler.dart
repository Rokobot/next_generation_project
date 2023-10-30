import 'dart:async';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Neticeler extends StatefulWidget {
  const Neticeler({super.key});

  @override
  State<Neticeler> createState() => _NeticelerState();
}

class _NeticelerState extends State<Neticeler> {

  Widget item(String path, String path2, Widget goldpath){
    return Container(
      decoration: BoxDecoration(gradient: LinearGradient(colors: [Color(0XFFB3D5FB), Colors.transparent], begin: Alignment.topCenter,end: Alignment.bottomCenter), borderRadius: BorderRadius.circular(20.0)),
      width: 340,height: 200,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Align(
            alignment: Alignment.bottomLeft,
            child: Row(

              children: [
                Container(
                  height: 50,
                  width: 50,
                  child: Image.asset('ilustrations/mukafat.png'),
                ),
                SizedBox(width: 5,),
                Container(
                  height: 50,
                  width: 50,
                  child: goldpath,
                ),
                SizedBox(width: 5,),
                Container(
                  child: Text(path2, style: TextStyle(fontSize: 23, color: Colors.red, fontStyle: FontStyle.italic),)
                )
              ],
            ),
          ),
          Container(
            height: 100,
            width: 100,
            child: CircleAvatar(child: ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Image.asset('asset/nextgn.jpg'),
            )),
          ),
          Card(
            elevation: 100,
            color: Colors.transparent,
            child: Center(child: Text(path,  style: TextStyle(fontSize: 24),textAlign: TextAlign.center,), ),
          ),
        ],
      )
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
              child: ListWheelScrollView(
                itemExtent: 250,
                physics: BouncingScrollPhysics(),
                children: [
                  item('Cəfərli Zöhrab\nMagistratura: 97 bal', 'Respublika birincisi', Image.asset('ilustrations/gerb.png')),
                  item('Namazov Elnur\nMagistratura: 96 bal', 'Respublika ikincisi', Image.asset('ilustrations/gerb.png')),
                  item('Məmmədova Bəxtiyar\nDövlət qulluğu BA3: 94 bal', 'Yüksək Nəticə',Container()),
                  item('Namazov Elnur\nSabah Qrupu: 91 bal', 'Yüksək Nəticə', Container()),
                  item('Qədirova Aysel\nMagistratura: 94 bal', 'Yüksək Nəticə',Container()),
                  item('Bürcəliyev Səbuhi\nSabah Qrupu: 94 bal', 'Yüksək Nəticə',Container()),
                  item('Ağayeva Fidan\nMagistratura: 91 bal', 'Yüksək Nəticə',Container()),
                  item('Ələkbərova Elnarə\nMagistratura: 90 bal', 'Yüksək Nəticə',Container()),
                  item('Əliyeva Səbinə\nMagistratura: 89 bal', 'Yüksək Nəticə',Container()),
                  item('Səfərov Davud\nMagistratura: 82 bal', 'Yüksək Nəticə',Container()),


                ],
              )),
        ),
      ),
    );
  }
}




