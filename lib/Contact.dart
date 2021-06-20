import 'package:flutter/material.dart';

class Contact extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gardify',
      theme: ThemeData(
        // This is the theme of your application.
        //
        primarySwatch: Colors.green,
      ),
      home: ContactPage(title: ''),
    );
  }
}

class ContactPage extends StatelessWidget {
  ContactPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contact Us'),
      ),
      //drawer: Navigation(),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  'Thanks for Using our App',
                  style: TextStyle(
                    fontFamily: 'Segoe UI',
                    fontSize: 26,
                    color: const Color(0xff418b2c),
                    fontWeight: FontWeight.w700,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                height: 300,
                width: 250,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(45.0),
                  color: const Color(0xfff2fedc),
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0x33000000),
                      offset: Offset(0, 3),
                      blurRadius: 6,
                    ),
                  ],
                ),
                child: Center(
                  child: Text(
                    'Team Gradify \n Please Hire Us \n Email us at : \n support@gardify.co',
                    style: TextStyle(
                      fontFamily: 'Segoe UI',
                      fontSize: 19,
                      color: const Color(0xff418b2c),
                      fontWeight: FontWeight.w600,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      height: 200,
                      width: 200,
                      child: Image.asset(
                        "assets/images/mascotThanks.png",
                      )),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(45.0),
                    child: ElevatedButton(
                      onPressed: () => {},
                      style: ElevatedButton.styleFrom(
                          primary: Color(0xffff7e68), elevation: 6),
                      child: Text(
                        'Mail us',
                        style: TextStyle(
                          fontFamily: 'Segoe UI',
                          fontSize: 20,
                          color: const Color(0xfffff0f0),
                          fontWeight: FontWeight.w700,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  height: 70,
                  child: Image.asset(
                    'assets/images/logo.png',
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
