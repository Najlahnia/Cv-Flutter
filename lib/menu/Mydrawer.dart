import 'package:flutter/material.dart';
import 'package:cvfinal/pages/homePage.dart';

class Mydrawer extends StatelessWidget {
  const Mydrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
      children: [
        DrawerHeader(
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [Colors.white, Colors.blue])),
            child: Center(
              child: CircleAvatar(
                backgroundImage: AssetImage(""),
                radius: 80,
              ),
            )),
        ListTile(
          title: Text('Accueil', style: TextStyle(fontSize: 22)),
          leading: Icon(Icons.home, color: Colors.blue),
          trailing: Icon(Icons.arrow_right, color: Colors.blue),
          onTap: () {
            Navigator.pop(context);
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => homePage()));
          },
        ),
        ListTile(
          title: Text('Bio', style: TextStyle(fontSize: 22)),
          leading: Icon(Icons.pedal_bike, color: Colors.blue),
          trailing: Icon(Icons.arrow_right, color: Colors.blue),
          onTap: () {},
        ),
        ListTile(
          title: Text('contact', style: TextStyle(fontSize: 22)),
          leading: Icon(Icons.contact_emergency, color: Colors.blue),
          trailing: Icon(Icons.arrow_right, color: Colors.blue),
          onTap: () {},
        ),
        ListTile(
          title: Text('Experience', style: TextStyle(fontSize: 22)),
          leading: Icon(Icons.deck_sharp, color: Colors.blue),
          trailing: Icon(Icons.arrow_right, color: Colors.blue),
          onTap: () {},
        ),
        ListTile(
          title: Text('Education', style: TextStyle(fontSize: 22)),
          leading: Icon(Icons.headset, color: Colors.blue),
          trailing: Icon(Icons.arrow_right, color: Colors.blue),
          onTap: () {
            Navigator.pop(context);
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => homePage()));
          },
        ),
      ],
    ));
  }
}
