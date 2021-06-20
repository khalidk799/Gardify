import 'package:flutter/material.dart';

import '../Navigation.dart';

class Soiltree extends StatelessWidget {
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
        title: Text('Sunlight & Soil \nPrefrence for Tree '),
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
                                'Three-to-six hours is good. When a tree requires partial shade, consider planting it in a spot that will get more shade than sun, especially in the afternoon when the sun is warmest. Planting on the east side of a building, where it will be shielded later in the day, is a perfect choice. \n Swipe Left for soil',
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
                                  'The best soil for most plants to ensure optimum growth is a rich, sandy loam. In most cases, you\'ll need to amend the soil with compost. Depending on how compact the soil is, you may need to add peat moss and sand.',
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
