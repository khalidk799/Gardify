import 'package:flutter/material.dart';
import 'package:gardify/Care/careclimbers.dart';
import 'package:gardify/Care/careherbs.dart';
import 'package:gardify/Care/careindoor.dart';
import 'package:gardify/Care/careshrubs.dart';
import 'package:gardify/Care/caretrees.dart';
import 'package:gardify/Howto/HowtoPlantClimber.dart';
import 'package:gardify/Howto/HowtoPlantHerbs.dart';
import 'package:gardify/Howto/HowtoPlantShrubs.dart';
import 'package:gardify/Howto/HowtoPlantTrees.dart';
import 'package:gardify/Howto/HowtoPlantindoor.dart';
import 'package:gardify/manure.dart';
import 'package:gardify/soil/soilclimber.dart';
import 'package:gardify/soil/soilherbs.dart';
import 'package:gardify/soil/soilindoor.dart';
import 'package:gardify/soil/soilshrubs.dart';
import 'package:gardify/soil/soilsucllents.dart';
import 'package:gardify/soil/soiltree.dart';
import 'package:gardify/water/waterclimbers.dart';
import 'package:gardify/water/waterherbs.dart';
import 'package:gardify/water/waterindoor.dart';
import 'package:gardify/water/watershrubs.dart';
import 'package:gardify/water/watertree.dart';
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
              builder: (context) => Manure(),
            ));
            break;
          case 4:
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => Soilsucllents(),
            ));
            break;
        }
        break;
      case 1:
        switch (infosrno) {
          case 0:
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => HowtoPlantTrees(),
            ));
            break;
          case 1:
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => Watertree(),
            ));
            break;
          case 2:
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => Caretrees(),
            ));
            break;
          case 3:
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => Manure(),
            ));
            break;
          case 4:
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => Soiltree(),
            ));
            break;
        }
        break;
      case 2:
        switch (infosrno) {
          case 0:
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => HowtoPlantHerbs(),
            ));
            break;
          case 1:
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => Waterherbs(),
            ));
            break;
          case 2:
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => Careherbs(),
            ));
            break;
          case 3:
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => Manure(),
            ));
            break;
          case 4:
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => Soilherbs(),
            ));
            break;
        }
        break;
      case 3:
        switch (infosrno) {
          case 0:
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => HowtoPlantShrubs(),
            ));
            break;
          case 1:
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => Watershrubs(),
            ));
            break;
          case 2:
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => Careshrubs(),
            ));
            break;
          case 3:
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => Manure(),
            ));
            break;
          case 4:
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => Soilshrubs(),
            ));
            break;
        }
        break;
      case 4:
        switch (infosrno) {
          case 0:
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => HowtoPlantClimber(),
            ));
            break;
          case 1:
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => Waterclimbers(),
            ));
            break;
          case 2:
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => Careclimbers(),
            ));
            break;
          case 3:
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => Manure(),
            ));
            break;
          case 4:
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => Soilclimber(),
            ));
            break;
        }
        break;
      case 5:
        switch (infosrno) {
          case 0:
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => HowtoPlantindoor(),
            ));
            break;
          case 1:
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => Waterindoor(),
            ));
            break;
          case 2:
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => Careindoor(),
            ));
            break;
          case 3:
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => Manure(),
            ));
            break;
          case 4:
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => Soilindoor(),
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
