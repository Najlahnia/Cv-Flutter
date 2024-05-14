import 'package:cvfinal/menu/Mydrawer.dart';
import 'package:cvfinal/view/main_view.dart';
import 'package:flutter/material.dart';
class homePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size; // Taille de l'écran

    return Scaffold(
      drawer: Mydrawer(),
      appBar: AppBar(
        title: Center(child: Text("Home Page")),
        backgroundColor: Colors.blue,
        actions: [
          // Bouton avec une icône pour naviguer vers MainView
          IconButton(
            icon: Icon(Icons.home), // Utilisez une icône appropriée
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => MainView()));
            },
          ),
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('/images/najla.jpg'), // Chemin de l'image
            fit: BoxFit.cover, // Ajuster l'image pour couvrir tout le conteneur
          ),
        ),
        child: Column(
          children: [
            SizedBox(height: size.height * 0.05), // Espacement en haut
            // Vos autres widgets ici...
          ],
        ),
      ),
    );
  }

  // Fonction pour gérer le bouton de déconnexion
  Future<void> _onDeconnexionPressed(BuildContext context) async {
    // Code de déconnexion ici (par exemple, suppression des informations de connexion)
    // Vous pouvez ici supprimer les données d'identification stockées ou effectuer d'autres actions nécessaires

    // Navigation vers la page d'authentification et suppression des routes précédentes
  }
}
