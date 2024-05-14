import 'package:cvfinal/data/dev_data.dart';
import 'package:cvfinal/pages/homePage.dart';
import 'package:cvfinal/widgets/skills_progress.dart';
import 'package:flutter/material.dart';

class FirstView extends StatefulWidget {
  const FirstView({
    Key? key,
    required this.nextPage,
  }) : super(key: key);

  final VoidCallback nextPage;

  @override
  _NajlaHniaPageState createState() => _NajlaHniaPageState();
}

class _NajlaHniaPageState extends State<FirstView> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween, // Align content vertically
      crossAxisAlignment: CrossAxisAlignment.center, // Center content horizontally
      children: [
        SizedBox(height: size.height * 0.05), // Top padding

        // Animated name section with hover effect
        MouseRegion(
          onEnter: (_) => setState(() => _isHovered = true),
          onExit: (_) => setState(() => _isHovered = false),
          child: AnimatedDefaultTextStyle(
            duration: Duration(milliseconds: 200),
            style: TextStyle(
              fontSize: _isHovered ? 48 : 36,
              color: _isHovered ? Colors.green[700] : Colors.black,
              fontWeight: FontWeight.bold,
            ),
            child: Column(
              children: [
                Text(
                  "Najla Hnia",
                ),
                Text(
                  "Docteur en Mathématiques",
                ),
                Text(
                  "Ingénieur Informatique",
                ),
                
              ],
            ),
          ),
        ),

        // Skills progress section
        Column(
          children: List.generate(
            DevData.devData.skillsAndProgress.length,
            (index) => SkillsProgress(
              progress: DevData.devData.skillsAndProgress[index].progress,
              title: DevData.devData.skillsAndProgress[index].name,
            ),
          ),
        ),

        SizedBox(height: size.height * 0.02), // Padding between sections

        // About Me button
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.green[200],
            textStyle: TextStyle(color: Colors.black),
            minimumSize: Size(size.width * 0.3, 50), // Set button size
          ),
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => homePage()));
          },
          child: Text("About Me"),
        ),

        SizedBox(height: size.height * 0.02), // Padding after button

        IconButton(
          color: Theme.of(context).canvasColor,
          onPressed: widget.nextPage,
          icon: const Icon(Icons.arrow_downward_outlined),
        ),

        SizedBox(height: size.height * 0.02), // Padding before "Next Page" button
      ],
    );
  }
}
