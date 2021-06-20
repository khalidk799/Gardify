import 'package:flutter/material.dart';
import 'ChoosePlant.dart';
// import 'Navigation.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gardify',
      theme: ThemeData(
        // This is the theme of your application.
        primarySwatch: Colors.green,
      ),
      home: MyHomePage(title: ''),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      // drawer: Navigation(),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  height: 70,
                  child: Image.asset(
                    'assets/images/logo.png',
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  'WELCOME!',
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
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(45.0),
                    color: const Color(0xfff2fedc),
                    boxShadow: [
                      BoxShadow(
                        color: const Color(0x33000000),
                        offset: Offset(0, 3),
                        blurRadius: 6,
                      ),
                    ],
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(45.0),
                    child: Image.asset(
                      'assets/images/mascot_one.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  'Hello! I am Mr.Crawler and I\'ll help you to take care of your plant.',
                  style: TextStyle(
                    fontFamily: 'Segoe UI',
                    fontSize: 26,
                    color: const Color(0xff418b2c),
                    fontWeight: FontWeight.w600,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(45.0),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ChoosePlant()));
                    },
                    style: ElevatedButton.styleFrom(
                        primary: Color(0xffff7e68), elevation: 6),
                    child: Text(
                      ' GET STARTED NOW',
                      style: TextStyle(
                        fontFamily: 'Segoe UI',
                        fontSize: 20,
                        color: const Color(0xfffff0f0),
                        fontWeight: FontWeight.w700,
                      ),
                      textAlign: TextAlign.center,
                    ),
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
