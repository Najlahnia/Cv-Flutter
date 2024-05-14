import 'package:cvfinal/view/main_view.dart';
import 'package:flutter/material.dart';
import 'package:cvfinal/menu/Mydrawer.dart';

class homePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Mydrawer(),
      appBar: AppBar(
        title: Center(child: Text("Home page")),
        backgroundColor: Colors.blue,
        actions: [
          // Bouton avec une icône pour naviguer vers MainView
          IconButton(
            icon: Icon(Icons.home), // Utilisez une icône appropriée
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => MainView()));
            },
          ),
        ],
      ),
      body: Center(
          // Contenu de votre page home ici...
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
