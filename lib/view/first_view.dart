import 'package:cvfinal/data/dev_data.dart';
import 'package:cvfinal/pages/homePage.dart';
import 'package:cvfinal/utils/app_colors.dart';
import 'package:cvfinal/utils/app_str.dart';
import 'package:cvfinal/widgets/skills_box.dart';
import 'package:cvfinal/widgets/skills_progress.dart';
import 'package:flutter/material.dart';

class FirstView extends StatelessWidget {
  const FirstView({
    super.key,
    required this.nextPage,
  });

  final VoidCallback nextPage;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    ThemeData theme = Theme.of(context);
    return Column(
      children: [
        SizedBox(height: size.height * 0.05), // Réduit l'espace en haut

        Container(
          padding: EdgeInsets.all(size.height * .01),
          decoration: BoxDecoration(
            color: theme.cardColor,
            shape: BoxShape.circle,
          ),
          child: CircleAvatar(
            radius: size.height * .1, // Réduit la taille de l'avatar
            backgroundColor: AppColors.appPrimary,
            backgroundImage: const NetworkImage(
              AppStrings.imageUrl,
            ),
          ),
        ),

        SizedBox(height: size.height * 0.02), // Réduit l'espace après l'avatar

        Text(
          DevData.devData.name,
          style: theme.textTheme.displayLarge,
        ),

        SizedBox(height: size.height * 0.02), // Réduit l'espace après le nom

        Wrap(
          crossAxisAlignment: WrapCrossAlignment.center,
          alignment: WrapAlignment.center,
          spacing: size.width * .03, // Réduit l'espacement horizontal entre les compétences
          runSpacing: size.width * .02, // Réduit l'espacement vertical entre les compétences
          children: List.generate(
              DevData.devData.skillsAndProgress.length,
              (index) => SkillBox(
                    text: DevData.devData.skillsAndProgress[index].name,
                  )),
        ),

        SizedBox(height: size.height * 0.02), // Réduit l'espace avant les barres de progression

        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: List.generate(
            DevData.devData.skillsAndProgress.length,
            (index) => SkillsProgress(
              progress: DevData.devData.skillsAndProgress[index].progress,
              title: DevData.devData.skillsAndProgress[index].name,
            ),
          ),
        ),

        IconButton(
          icon: Icon(Icons.home),
          onPressed: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => homePage()));
          },
        ),

        SizedBox(height: size.height * 0.02), // Réduit l'espace après l'icône Home

        Expanded(child: Container()),

        IconButton(
          color: theme.canvasColor,
          onPressed: nextPage,
          icon: const Icon(Icons.arrow_downward_outlined),
        ),

        SizedBox(height: size.height * 0.02), // Réduit l'espace avant le bouton "Next Page"
      ],
    );
  }

}
