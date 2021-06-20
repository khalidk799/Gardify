import 'package:flutter/material.dart';

import '../Navigation.dart';

class HowtoPlantSucclents extends StatelessWidget {
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
        title: Text('How to Plant Succlents ?'),
      ),
      drawer: Navigation(),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  'Follow the below steps!',
                  style: TextStyle(
                    fontFamily: 'Segoe UI',
                    fontSize: 26,
                    color: const Color(0xff418b2c),
                    fontWeight: FontWeight.w700,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                width: 350,
                height: 550,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(26.0),
                    color: const Color(0xfff2fedc),
                    boxShadow: [
                      BoxShadow(
                        color: const Color(0x33000000),
                        offset: Offset(0, 3),
                        blurRadius: 6,
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Image.asset(
                          'assets/howtoplant/Succlents.jpeg',
                          height: 225,
                          width: 300,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Text(
                        '1.Before you place your succulent in the pot you\'ve chosen, fill it almost to the top with succulent soil.\n \n  2.You can plant the succulent –centered or off-center, whichever you\'d like. \n \n 3.Nestle some of the roots into the soil, so they\'ll get a bit of a head start on growth.\n \n 4.Now it\'s time to fill up the pot. Make sure the leaves of the succulent sit completely above the soil, to prevent rotting.',
                        style: TextStyle(
                          fontFamily: 'Segoe UI',
                          fontSize: 18,
                          color: const Color(0xff333131),
                          fontWeight: FontWeight.w600,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
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
