import 'package:flutter/material.dart';
import 'package:gardify/Contact.dart';

import 'ChoosePlant.dart';
import 'Reddit.dart';
import 'shop.dart';

class Navigation extends StatefulWidget {
  const Navigation({Key? key}) : super(key: key);

  @override
  _NavigationState createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child:
            Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          Column(
            children: [
              CustomListTile(Icons.home, 'Home', 0),
              CustomListTile(Icons.shop_sharp, 'Shop plants', 1),
              CustomListTile(Icons.group, 'Community', 2),
              CustomListTile(Icons.contact_page, 'Contact us', 3),
            ],
          ),
          Container(
            height: 70,
            child: Image.asset(
              'assets/images/logo.png',
            ),
          ),
        ]),
      ),
    );
  }
}

// ignore: must_be_immutable
class CustomListTile extends StatefulWidget {
  IconData icon;
  String text;
  int onTp;

  CustomListTile(this.icon, this.text, this.onTp);

  @override
  _CustomListTileState createState() => _CustomListTileState();
}

class _CustomListTileState extends State<CustomListTile> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8.0, 0, 8.0, 0),
      child: Container(
        decoration: BoxDecoration(
            border: Border(bottom: BorderSide(color: Colors.grey.shade400))),
        child: InkWell(
          splashColor: Colors.green[100],
          onTap: () => selectedItem(context, widget.onTp),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                height: 50,
                child: Row(
                  children: <Widget>[
                    Icon(widget.icon, color: Colors.green),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        widget.text,
                        style: TextStyle(fontSize: 17),
                      ),
                    ),
                  ],
                ),
              ),
              Icon(Icons.arrow_right),
            ],
          ),
        ),
      ),
    );
  }

  selectedItem(BuildContext context, int index) {
    switch (index) {
      case 0:
        Navigator.of(context).pop();
        Navigator.of(context).pop();
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => ChoosePlant(),
        ));
        break;
      case 1:
        Navigator.of(context).pop();
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => Shoppage(),
        ));
        break;
      case 2:
        Navigator.of(context).pop();
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => Reddit(),
        ));
        break;
      case 3:
        Navigator.of(context).pop();
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => Contact(),
        ));
        break;
    }
  }
}
