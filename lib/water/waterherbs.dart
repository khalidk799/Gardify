import 'package:flutter/material.dart';

import '../Navigation.dart';

class Waterherbs extends StatelessWidget {
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
        title: Text('How to water Herbs ?'),
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
                          'assets/images/water.jpeg',
                          height: 225,
                          width: 300,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          'Herbs can be categorized into two categories, after you have found out into which category a particular herb falls, you can easily decide how to water it: \n 1.Moisture loving -  A rule of thumb in knowing when to water your moisture-loving herbs is to check the first few top inches of your soil. If you feel it\’s dry, then you need to water.\n2.Drought-tolerant herbs  - so you can water them when you feel that the soil is extremely dry.',
                          style: TextStyle(
                            fontFamily: 'Segoe UI',
                            fontSize: 18,
                            color: const Color(0xff333131),
                            fontWeight: FontWeight.w600,
                          ),
                          textAlign: TextAlign.justify,
                        ),
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
