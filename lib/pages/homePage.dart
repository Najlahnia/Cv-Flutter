import 'package:cvfinal/menu/Mydrawer.dart';
import 'package:cvfinal/view/main_view.dart';
import 'package:flutter/material.dart';

class homePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      drawer: Mydrawer(),
      appBar: AppBar(
        title: Center(child: Text("Discover more")),
        backgroundColor: Color.fromARGB(255, 96, 33, 243),
        actions: [
          // Bouton avec une icône pour naviguer vers MainView
          IconButton(
            icon: Icon(Icons.face), // Utilisez une icône appropriée
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => MainView()));
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          height: size.height,
          width: size.width,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/najla.jpg'), // Chemin de l'image
              fit: BoxFit.fill, // Ajuster l'image pour remplir toute la zone disponible
            ),
          ),
          child: Container(
            color: Colors.black.withOpacity(0.5), // Couleur de fond semi-transparente
            child: Column(
              children: [
                SizedBox(height: size.height * 0.05), // Espacement en haut
                
                // Vous pouvez ajouter d'autres widgets Text ou tout autre widget ici...
              ],
            ),
          ),
        ),
      ),
    );
  }
}
