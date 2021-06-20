import 'package:flutter/material.dart';

import '../Navigation.dart';

class Watersucclents extends StatelessWidget {
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
        title: Text('How to water Succlents ?'),
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
                          '1.Most succulents experience growth during the warmer seasons. During this time, you need to water them adequately. In cold seasons, winter and spring, they require less moisture. \n2.Also Watering depends on where your succulent is placed. If it is outside in direct sunlight, you may need to water regularly as compared to when it\’s indoors. \n3.On average, during spring / summer, you can water once a week or even more, depending on whether the soil dries or not.  ',
                          style: TextStyle(
                            fontFamily: 'Segoe UI',
                            fontSize: 17.0,
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
