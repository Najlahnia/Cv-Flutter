import 'package:flutter/material.dart';
import 'package:cvfinal/pages/homePage.dart';

class Mydrawer extends StatelessWidget {
  const Mydrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
          children: [
            DrawerHeader (
                decoration: BoxDecoration(
                    gradient: LinearGradient (colors: [Colors. white, Colors. blue])),
                child: Center(
                  child: CircleAvatar (
                    backgroundImage: AssetImage (""),
                    radius: 80,
                  ),
                )),
            ListTile(
              title: Text ('Accueil', style: TextStyle (fontSize: 22)),
              leading: Icon (Icons. home, color: Colors. blue),
              trailing: Icon (Icons.arrow_right, color: Colors.blue),
              onTap: () {   Navigator.pop(context);
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => homePage()));},
            ),
            
           
            ListTile(
              title: Text ('pays', style: TextStyle (fontSize: 22)),
              leading: Icon (Icons.villa, color: Colors. blue),
              trailing: Icon (Icons.arrow_right, color: Colors.blue),
              onTap: () {   
              },
            ),
            ListTile(
              title: Text ('contact', style: TextStyle (fontSize: 22)),
              leading: Icon (Icons.contact_emergency, color: Colors. blue),
              trailing: Icon (Icons.arrow_right, color: Colors.blue),
              onTap: () {  
              },
            ),
            ListTile(
              title: Text ('parametre', style: TextStyle (fontSize: 22)),
              leading: Icon (Icons.settings, color: Colors. blue),
              trailing: Icon (Icons.arrow_right, color: Colors.blue),
              onTap: () {  
              },
            ),
            ListTile(
              title: Text ('Dexcions', style: TextStyle (fontSize: 22)),
              leading: Icon (Icons.logout, color: Colors. blue),
              trailing: Icon (Icons.arrow_right, color: Colors.blue),
              onTap: () {   Navigator.pop(context);
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => homePage()));
              },
            ),
          ],
        ));
  }
}
