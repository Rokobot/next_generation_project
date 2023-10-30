import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

Widget designText({required Text objectText}) {
  return ShaderMask(
    shaderCallback: (Rect bounds) {
      return LinearGradient(colors: [Colors.grey, Colors.white]).createShader(bounds);
    },
    child: objectText,
  );
}

Widget CustomColumn({required Widget child, required String text}) {
  return Center(
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Flexible(
          flex: 2,
          child: Container(
            width: 170,
            height: 170,
            child: child,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Expanded(child: designText(objectText: Text(text, style: TextStyle(fontSize: 18),)))
      ],
    ),
  );
}

Widget CustomCard(
    {required String textBody,
    required Widget child,
    required BuildContext context,
    required String textDescription}) {
  bool  isExpanded = false;
  return Center(
    child: Container(
      color: Colors.transparent,
      child: Card(
        elevation: 40,
        color: Colors.transparent,
        child: Container(
          width: MediaQuery.of(context).size.width * 0.8,
          height: MediaQuery.of(context).size.height * 0.8,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Color(0XFF063D7B), Color(0XFF45AD9A)])),
          child: Padding(
              padding: const EdgeInsets.all(8.0),
              child:GestureDetector(
                onTap: (){
                  print(isExpanded);
                  isExpanded =! isExpanded;
                  print(isExpanded);
                },
                child: Hero(
                  tag: 'Desc',
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
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
                          style: TextStyle(fontSize: 15),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(height: 200, width: 200, child: child),
                      SizedBox(
                        height: 10,
                      ),
                      designText(
                        objectText: Text(
                          textBody,
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Container(
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.0),gradient: LinearGradient(begin: Alignment.topCenter, end: Alignment.bottomCenter, colors: [Colors.grey, Colors.transparent])),
                          height: MediaQuery.of(context).size.height*0.20,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ListView(
                              physics: BouncingScrollPhysics(),
                              children: [
                                Text(textDescription, textAlign: TextAlign.center,)
                              ],
                            ),
                          ),
                        ),
                      ),



                       // This will push the Align widget to the bottom
                      Expanded(
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: GestureDetector(
                            onTap: () {
                              showModalBottomSheet(
                                  context: context,
                                  builder: (context) {
                                    return Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        ListTile(
                                          title: Text('Bir başa əlaqə'),
                                          trailing: Icon(Icons.phone, color: Colors.white,),
                                          onTap: () {
                                            visitNewContact('+994513023222');
                                          },
                                        ),
                                        ListTile(
                                          title: Text('SMS'),
                                          trailing: Icon(Icons.link, color: Colors.yellow,),
                                          onTap: (){
                                            visitNewSMS('+994513023222');
                                          },
                                        ),
                                        ListTile(
                                          title: Text('WhatsApp'),
                                          trailing: Icon(Icons.whatsapp, color: Colors.green,),
                                          onTap: (){
                                            visitNewWhatsApp('+994513023222');
                                          },
                                        ),
                                        SizedBox(height: 5,)
                                      ],
                                    );
                                  });
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Color(0XFF3D3C42),
                                  borderRadius: BorderRadius.circular(10)),
                              width: 300,
                              height: 70,
                              child: Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: Column(
                                    children: [
                                      Center(child: Card(margin:EdgeInsets.only(bottom: 8),child: Text('Sürətli müraciət'), elevation: 10,),),

                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Icon(
                                            Icons.phone,
                                            size: 30,
                                            color: Color(0XFF00FFFF),
                                          ),
                                          Icon(
                                            Icons.message,
                                            size: 30,
                                            color: Color(0XFF00FFFF),
                                          ),
                                          Icon(
                                            Icons.whatsapp,
                                            size: 30,
                                            color: Color(0XFF00FFFF),
                                          ),
                                        ],
                                      ),
                                    ],
                                  )
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ), ),
        ),
      ),
    ),
  );
}

void backScreen({required BuildContext context}) {
  Navigator.pop(context);
}

void visitNewContact(String urlString) async {
  Uri visitUrl = Uri.parse('tel:'+urlString);
  await launchUrl(visitUrl) ? {} : {};
}

void visitNewSMS(String urlString) async {
  Uri visitUrl = Uri.parse('sms:'+urlString);
  await launchUrl(visitUrl) ? {} : {};
}

void visitNewWhatsApp(String urlString) async {
  Uri visitUrl = Uri.parse('whatsapp://send?phone=:'+urlString);
  final message = Uri.encodeFull("""
Salam, sizə bu mesajı next generation mobil tətbiqindən göndərirəm. 
Sizə tədris ilə bağlı bir neçə sualım var.
  """); // Encode your message

  final whatsappUrl = Uri.parse('$visitUrl&text=$message');
  await launchUrl(whatsappUrl) ? {} : {};
}




