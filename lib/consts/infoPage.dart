import 'package:flutter/material.dart';
import 'package:next_generation/consts/consts.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CustomCard(
        textBody: 'Your Text Body',
        child: Image.network('https://example.com/your-image.jpg'),
        textDescription: 'Your Text Description',
      ),
    );
  }
}

class CustomCard extends StatefulWidget {
  final String textBody;
  final Widget child;
  final String textDescription;

  const CustomCard({
    Key? key,
    required this.textBody,
    required this.child,
    required this.textDescription,
  }) : super(key: key);

  @override
  State<CustomCard> createState() => _CustomCardState();
}

class _CustomCardState extends State<CustomCard> {
  bool isExpanded = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SafeArea(
        child: Center(
          child: Container(
            child: Card(
              elevation: 40,
              color: Colors.transparent,
              child: Container(
                margin: EdgeInsets.all(5.0),
                width: MediaQuery.of(context).size.width*0.8,
                height: MediaQuery.of(context).size.height*0.8,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Color(0XFF063D7B), Color(0XFF45AD9A)],
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        PageRouteBuilder(
                          transitionDuration: Duration(milliseconds: 400), // Adjust the duration as needed
                          pageBuilder: (context, animation, secondaryAnimation) {
                            return FadeTransition(
                              opacity: animation,
                              child: NewOpenEye(
                                textBody: widget.textBody,
                                child: widget.child,
                                textDescription: widget.textDescription,
                              ),
                            );
                          },
                        ),
                      );
                    },
                    child: Hero(



                      tag: 'customCardTag',
                      child: Material(
                        type: MaterialType.transparency,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                           Row(
                             children: [
                               Align(alignment: Alignment.topLeft,child: GestureDetector(child: Icon(Icons.arrow_left, size: 50,), onTap: (){backScreen(context: context);},)),
                               Center(
                                 child: Text(
                                   'Next Generation',
                                   style: TextStyle(fontSize: 26),
                                 ),
                               ),
                             ],
                           ),
                            Expanded(
                              child: Container(
                                height: 200,
                                width: 200,
                                child: widget.child,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            designText(
                               objectText: Text(widget.textBody, style: TextStyle(fontSize: 20),),
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.0),
                                    gradient: LinearGradient(
                                      begin: Alignment.topCenter,
                                      end: Alignment.bottomCenter,
                                      colors: [Color(0XFF0a947d), Colors.transparent],
                                    ),
                                  ),
                                  child: Center(
                                    child: Text(
                                      maxLines: 4,
                                      overflow: TextOverflow.ellipsis ,
                                      widget.textDescription,
                                      textAlign: TextAlign.center,
                                        style: TextStyle(fontSize: 18)
                                    ),
                                  ),
                                ),
                              ),
                            ),
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
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class NewOpenEye extends StatefulWidget {
  final String textBody;
  final Widget child;
  final String textDescription;

  const NewOpenEye({
    Key? key,
    required this.textBody,
    required this.child,
    required this.textDescription,
  }) : super(key: key);

  @override
  State<NewOpenEye> createState() => _NewOpenEyeState();
}

class _NewOpenEyeState extends State<NewOpenEye> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Container(
            decoration: BoxDecoration(gradient: LinearGradient(begin: Alignment.topCenter, end: Alignment.bottomCenter, colors: [Color(0XFF0F1323), Color(0XFF2699CA)])),
            child: Card(
              elevation: 40,
              color: Colors.transparent,
              child: Container(
                margin: EdgeInsets.all(5.0),
                width: double.infinity,
                height: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Color(0XFF063D7B), Color(0XFF45AD9A)],
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: Hero(
                      tag: 'customCardTag',
                      child: Material(
                        type: MaterialType.transparency,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              'Next Generation',
                              style: TextStyle(fontSize: 26),
                            ),
                            Container(
                              height: 100,
                              width: 100,
                              child: widget.child,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            designText(
                              objectText:Text(widget.textBody, style: TextStyle(fontSize: 16),),

                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.0),
                                    gradient: LinearGradient(
                                      begin: Alignment.topCenter,
                                      end: Alignment.bottomCenter,
                                      colors: [Color(0XFF0a947d), Color(0XFF045c56)],
                                    ),
                                  ),
                                  child: ListView(
                                    physics: BouncingScrollPhysics(),
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.all(5.0),
                                        child: Text(
                                          widget.textDescription,
                                          textAlign: TextAlign.center,
                                            style: TextStyle(fontSize: 18)
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),

                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}


void backScreen({required BuildContext context}) {
  Navigator.pop(context);
}

void visitNewContact(String urlString) async {
  Uri visitUrl = Uri.parse('tel:' + urlString);
  await launchUrl(visitUrl) ? {} : {};
}

void visitNewSMS(String urlString) async {
  Uri visitUrl = Uri.parse('sms:' + urlString);
  await launchUrl(visitUrl) ? {} : {};
}

void visitNewWhatsApp(String urlString) async {
  Uri visitUrl = Uri.parse('whatsapp://send?phone=:' + urlString);
  final message = Uri.encodeFull("""
Salam, sizə bu mesajı next generation mobil tətbiqindən göndərirəm. 
Sizə tədris ilə bağlı bir neçə sualım var.
  """); // Encode your message

  final whatsappUrl = Uri.parse('$visitUrl&text=$message');
  await launchUrl(whatsappUrl) ? {} : {};
}
