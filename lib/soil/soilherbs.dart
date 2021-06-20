import 'package:flutter/material.dart';

import '../Navigation.dart';

class Soilherbs extends StatelessWidget {
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
        title: Text('Sunlight & Soil \nPrefrence for Herbs '),
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
                                'assets/images/sun.jpeg',
                                height: 225,
                                width: 300,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Text(
                                'Bright Sun for Happy Herbs. Most herbs grow best in full sun. Plant your herbs where they will receive at least 6 to 8 hours of direct sunlight each day.',
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
                                child: Image.asset(
                                  'assets/images/mannure.jpg',
                                  height: 225,
                                  width: 300,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Text(
                                  'Most herbs thrive in typical garden soil, as long as it has good drainage. However, some herbs, such as rosemary, lavender and bay, are woody plants native to the Mediterranean. These herbs prefer gritty, sharply drained soil.',
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
