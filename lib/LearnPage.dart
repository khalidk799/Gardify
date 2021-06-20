import 'package:flutter/material.dart';
import 'package:gardify/soil/soilsucllents.dart';
import 'Care/caresucclents.dart';
import 'water/watersucclents.dart';
import 'Howto/HowtoPlantSucclents.dart';
import 'Navigation.dart';

// ignore: must_be_immutable
class LearnPage extends StatelessWidget {
  int plntsrno;
  LearnPage({Key? key, required this.plntsrno}) : super(key: key);

  nextpge(BuildContext context, int plntsr, int infosrno) {
    switch (plntsr) {
      case 0:
        switch (infosrno) {
          case 0:
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => HowtoPlantSucclents(),
            ));
            break;
          case 1:
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => Watersucclents(),
            ));
            break;
          case 2:
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => Caresucclents(),
            ));
            break;
          case 3:
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => HowtoPlantSucclents(),
            ));
            break;
          case 4:
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => Soilsucllents(),
            ));
            break;
        }
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Navigation(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '   What do you \n want to know ?',
                  style: TextStyle(
                    fontFamily: 'Segoe UI',
                    fontSize: 25,
                    color: Colors.green[800],
                    fontWeight: FontWeight.w900,
                  ),
                ),
                Image.asset("assets/images/Mascot3.png"),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: 350,
                    height: 80,
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
                      child: InkWell(
                        onTap: () => nextpge(context, plntsrno, 0),
                        child: Row(
                          children: [
                            Image.asset(
                              'assets/Mascot/plant.png',
                              height: 125,
                              width: 125,
                              fit: BoxFit.cover,
                            ),
                            Text(
                              'How to Plant?',
                              style: TextStyle(
                                fontFamily: 'Segoe UI',
                                fontSize: 25,
                                color: const Color(0xff333131),
                                fontWeight: FontWeight.w700,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      SizedBox(
                        width: 350,
                        height: 80,
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
                          child: InkWell(
                            onTap: () => nextpge(context, plntsrno, 1),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'assets/Mascot/water.png',
                                  height: 125,
                                  width: 110,
                                  fit: BoxFit.cover,
                                ),
                                Text(
                                  'Watering Schedule',
                                  style: TextStyle(
                                    fontFamily: 'Segoe UI',
                                    fontSize: 25,
                                    color: const Color(0xff333131),
                                    fontWeight: FontWeight.w700,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      SizedBox(
                        width: 350,
                        height: 80,
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
                          child: InkWell(
                            onTap: () => nextpge(context, plntsrno, 2),
                            child: Row(
                              children: [
                                Image.asset(
                                  'assets/Mascot/care.png',
                                  height: 125,
                                  width: 125,
                                  fit: BoxFit.cover,
                                ),
                                Text(
                                  'Extra Care',
                                  style: TextStyle(
                                    fontFamily: 'Segoe UI',
                                    fontSize: 25,
                                    color: const Color(0xff333131),
                                    fontWeight: FontWeight.w700,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      SizedBox(
                        width: 350,
                        height: 80,
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
                          child: InkWell(
                            onTap: () => nextpge(context, plntsrno, 3),
                            child: Row(
                              children: [
                                Image.asset(
                                  'assets/Mascot/diymanure.png',
                                  height: 125,
                                  width: 125,
                                  fit: BoxFit.cover,
                                ),
                                Text(
                                  'DIY Manure',
                                  style: TextStyle(
                                    fontFamily: 'Segoe UI',
                                    fontSize: 25,
                                    color: const Color(0xff333131),
                                    fontWeight: FontWeight.w700,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      SizedBox(
                        width: 350,
                        height: 80,
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
                          child: InkWell(
                            onTap: () => nextpge(context, plntsrno, 4),
                            child: Row(
                              children: [
                                Image.asset(
                                  'assets/Mascot/sun.png',
                                  height: 125,
                                  width: 125,
                                  fit: BoxFit.cover,
                                ),
                                Text(
                                  'Sunlight & Soil',
                                  style: TextStyle(
                                    fontFamily: 'Segoe UI',
                                    fontSize: 25,
                                    color: const Color(0xff333131),
                                    fontWeight: FontWeight.w700,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
