import 'package:cvfinal/models/dev_model.dart';
import 'package:flutter/material.dart'; // Importation pour utiliser IconData

class DevData {
  DevData._();

  static final devData = DevModel(
    name: "Hnia Najla",
    bio: devBio,
    skillsAndProgress: <SkillsData>[
      SkillsData(
        name: 'Software Engineer',
        progress: 0.7,
      ),
      SkillsData(
        name: 'Mobile App Developer',
        progress: 0.9,
      ),
      SkillsData(
        name: 'Angular Developer',
        progress: 1,
      ),
    ],
    hobbies: <String>[
      "Learning about Development",
      "Create YouTube Content",
      "Playing COD",
    ],
    github: 'https://github.com/HniaNajla', // Ajout du champ github
    number: '+21697597390',
    mail: 'najla.hnia1@gmail.com',
    address: 'Sfax, Tunisia', // Ajout du champ address
    diplomasWithIcons: {}, // Initialisation de diplomasWithIcons, vous pouvez l'ajuster selon vos besoins
    education: <String>[ // Ajout du champ education
      "Engineering Degree in Computer Science\nFaculty of Sciences, Sfax\n2017-2020",
      "Doctorate in Mathematics\nNAJLA\nYear",
      "Master's Degree in Mathematics\nInstitute of Applied Mathematics and Computer Science of Kairouan\n2013-2016",
      "Bachelor's Degree in Mathematics\nMaster's Degree in Mathematics",
    ],
  );

  static const String devBio = """
As a student in computer engineering and a doctor in mathematics, 
I epitomize the relentless pursuit of knowledge and the synergy between 
analytical thinking and technological innovation.
""";
}
