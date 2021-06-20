import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'Navigation.dart';

class Shoppage extends StatelessWidget {
  Shoppage({
    Key? key,
  }) : super(key: key);
  Container customView(String imgvl, String url) {
    return Container(
      width: 300,
      height: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(45.0),
        color: const Color(0xfff2fedc),
        boxShadow: [
          BoxShadow(
            color: const Color(0x33000000),
            offset: Offset(0, 3),
            blurRadius: 15,
          ),
        ],
      ),
      child: InkWell(
        splashColor: Colors.green[100],
        onTap: () => {launch(url)},
        child: Image.asset(
          imgvl,
          fit: BoxFit.contain,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(""),
      ),
      drawer: Navigation(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                'Buy some Plants Here!',
                style: TextStyle(
                  fontFamily: 'Segoe UI',
                  fontSize: 26,
                  color: Colors.green[800],
                  fontWeight: FontWeight.w700,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: customView('assets/images/amazon.png',
                            "https://www.amazon.in/Plants/b?ie=UTF8&node=4297302031")),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: customView('assets/images/Ugaoo.png',
                          'https://www.ugaoo.com/?gclid=CjwKCAjwq7aGBhADEiwA6uGZpxhtUj5Pkhhu146C0ckf_ErNaU9nNfLyFdf2ZaqMS4BqLa5VxUWaWRoCQV0QAvD_BwE'),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: customView('assets/images/plants.png',
                          'https://www.plants.com/'),
                    ),
                    Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: customView('assets/images/bloomscape.png',
                            'https://bloomscape.com/')),
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
