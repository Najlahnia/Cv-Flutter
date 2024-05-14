import 'package:flutter/src/widgets/icon_data.dart';

/// Developer model class
class DevModel {
  final String name;
  final String number;
  final String mail;
  final String bio;
  final List<SkillsData> skillsAndProgress;
  final List<String> hobbies;
  final List<String> education;

  DevModel({
    required this.number,
    required this.mail,
    required this.name,
    required this.bio,
    required this.skillsAndProgress,
    required this.hobbies, required String github, required Map<String, IconData> diplomasWithIcons, required String address, 
    required this.education,
  });
}

/// Skills model class
class SkillsData {
  final String name;
  final double progress;
  SkillsData({
    required this.name,
    required this.progress,
  });
}
