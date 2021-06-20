import 'package:flutter/material.dart';

import '../Navigation.dart';

class Soilindoor extends StatelessWidget {
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
        title: Text('Sunlight & Soil \nPrefrence for Indoor Plants '),
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
                                'Indirect sunlight or Artificial lights can be used for indoor plants. In fact, low-light foliage plants (such as pothos and peace lilies) can grow quite nicely in windowless offices with enough artificial light.',
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
                                  'A good indoor potting mix is usually composed of peat moss, vermiculite and perlite. These soilless mixes absorb moisture very well and resist compaction, but they tend to dry out very quickly. Since they do not contain any nutrients, you must provide your plants with a consistent supply of fertilizer.',
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
