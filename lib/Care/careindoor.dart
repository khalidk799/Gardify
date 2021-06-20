import 'package:flutter/material.dart';

import '../Navigation.dart';

class Careindoor extends StatelessWidget {
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
        title: Text('Extra Care for Indoor Plants '),
      ),
      drawer: Navigation(),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                'Read the Instructions Carefully                                                      ',
                style: TextStyle(
                  fontFamily: 'Segoe UI',
                  fontSize: 26,
                  color: const Color(0xff418b2c),
                  fontWeight: FontWeight.w700,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(22, 0, 22, 0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
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
                                'assets/Mascot/care.png',
                                height: 225,
                                width: 300,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Text(
                                '1. Good drainage is essential to healthy houseplants. Start with a good, organic potting soil (not regular soil) that has been mixed specifically for indoor gardening. \n \n 2.Unlike plants living outside, houseplants don\’t have a regular source of nutrient replenishment unless you fertilize them regularly.  ',
                                style: TextStyle(
                                  fontFamily: 'Segoe UI',
                                  fontSize: 20,
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
                    Padding(
                      padding: const EdgeInsets.fromLTRB(22, 0, 22, 0),
                      child: SizedBox(
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
                                child: Text(
                                  '3. If your plants are thriving and growing the way you want them to, eventually they will need a bigger pot — or some fresh potting mix. Repot plants in the spring when they are just starting to grow. Vigorous root growth will allow the plant to adjust to its new container quickly.\n4.A dimly lit room should suffice for those few plants willing to survive in low light areas. Moderate light-needing plants will prefer a north-facing window, light diffused through a thin curtain or daylight without direct sun. Indoor plants that prefer high light will need to be in a south-facing window or under a grow light. ',
                                  style: TextStyle(
                                    fontFamily: 'Segoe UI',
                                    fontSize: 22,
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
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
