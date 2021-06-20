import 'package:flutter/material.dart';
import 'LearnPage.dart';
import 'Navigation.dart';

class ChoosePlant extends StatelessWidget {
  ChoosePlant({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Navigation(),
      backgroundColor: const Color(0xffffffff),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Which type of Plant \nyou want to Choose?',
                    style: TextStyle(
                      fontFamily: 'Segoe UI',
                      fontSize: 22,
                      color: Colors.green[800],
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  Image.asset("assets/images/Mascot2.png"),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: () => {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => LearnPage(
                        plntsrno: 0,
                      ),
                    ))
                  },
                  child: Column(
                    children: [
                      Container(
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
                            Image.asset(
                              'assets/images/cactus.png',
                              height: 125,
                              width: 125,
                              fit: BoxFit.cover,
                            ),
                            Text(
                              'Succlents',
                              style: TextStyle(
                                fontFamily: 'Segoe UI',
                                fontSize: 22,
                                color: const Color(0xff333131),
                                fontWeight: FontWeight.w600,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Container(
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
                            Image.asset(
                              'assets/images/tree.png',
                              height: 125,
                              width: 125,
                              fit: BoxFit.cover,
                            ),
                            Text(
                              'Trees',
                              style: TextStyle(
                                fontFamily: 'Segoe UI',
                                fontSize: 22,
                                color: const Color(0xff333131),
                                fontWeight: FontWeight.w600,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Container(
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
                            Image.asset(
                              'assets/images/herbs.png',
                              height: 125,
                              width: 125,
                              fit: BoxFit.cover,
                            ),
                            Text(
                              'Herbs',
                              style: TextStyle(
                                fontFamily: 'Segoe UI',
                                fontSize: 22,
                                color: const Color(0xff333131),
                                fontWeight: FontWeight.w600,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Container(
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
                              Image.asset(
                                'assets/images/shrubs.png',
                                height: 125,
                                width: 125,
                                fit: BoxFit.cover,
                              ),
                              Text(
                                'Shrubs',
                                style: TextStyle(
                                  fontFamily: 'Segoe UI',
                                  fontSize: 22,
                                  color: const Color(0xff333131),
                                  fontWeight: FontWeight.w600,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Container(
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
                            Image.asset(
                              'assets/images/climber.png',
                              height: 125,
                              width: 125,
                              fit: BoxFit.cover,
                            ),
                            Text(
                              'Climbers',
                              style: TextStyle(
                                fontFamily: 'Segoe UI',
                                fontSize: 22,
                                color: const Color(0xff333131),
                                fontWeight: FontWeight.w600,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Container(
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
                              Image.asset(
                                'assets/images/indoor.png',
                                height: 125,
                                width: 125,
                                fit: BoxFit.cover,
                              ),
                              Text(
                                'Indoor',
                                style: TextStyle(
                                  fontFamily: 'Segoe UI',
                                  fontSize: 22,
                                  color: const Color(0xff333131),
                                  fontWeight: FontWeight.w600,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
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
