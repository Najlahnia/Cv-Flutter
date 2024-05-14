import 'package:cvfinal/data/dev_data.dart';
import 'package:cvfinal/utils/app_str.dart';
import 'package:cvfinal/widgets/contact_card.dart';
import 'package:flutter/material.dart';

class ThirdView extends StatelessWidget {
  const ThirdView({Key? key, required this.nextPage}) : super(key: key);

  final VoidCallback nextPage;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final ThemeData theme = Theme.of(context);

    return SafeArea(
      child: Column(
        children: [
          SizedBox(height: size.height * 0.02),

          Container(
            margin: EdgeInsets.all(size.height * .002),
            padding: EdgeInsets.symmetric(horizontal: size.width * .025, vertical: size.height * .002),
            width: size.width * 0.9,
            decoration: BoxDecoration(
              color: theme.cardColor,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(AppStrings.secondScreenBio, style: theme.textTheme.subtitle2),
                SizedBox(height: size.height * .005),
                Text(DevData.devBio, style: theme.textTheme.bodyText2),
              ],
            ),
          ),

          SizedBox(height: size.height * 0.02),

          Container(
            margin: EdgeInsets.all(size.height * .002),
            padding: EdgeInsets.symmetric(horizontal: size.width * .025, vertical: size.height * .002),
            width: size.width * 0.9,
            decoration: BoxDecoration(
              color: theme.cardColor,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(AppStrings.secondScreenHobbies, style: theme.textTheme.subtitle2),
                SizedBox(height: size.height * .005),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: List.generate(
                    DevData.devData.hobbies.length,
                    (index) => Text("${index + 1}. ${DevData.devData.hobbies[index]}", style: theme.textTheme.bodyText2),
                  ),
                ),
              ],
            ),
          ),

          SizedBox(height: size.height * 0.02),

          Container(
            margin: EdgeInsets.all(size.height * .002),
            padding: EdgeInsets.symmetric(horizontal: size.width * .025, vertical: size.height * .002),
            width: size.width * 0.9,
            decoration: BoxDecoration(
              color: theme.cardColor,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(AppStrings.secondScreenContact, style: theme.textTheme.subtitle2),
                SizedBox(height: size.height * .005),
                Column(
                  children: [
                    ContactCard(title: DevData.devData.number, icon: Icons.phone),
                    ContactCard(title: DevData.devData.mail, icon: Icons.mail),
                  ],
                ),
              ],
            ),
          ),

          SizedBox(height: size.height * 0.02),

          IconButton(
            color: theme.canvasColor,
            onPressed: nextPage,
            icon: const Icon(Icons.arrow_upward_outlined),
          ),

          SizedBox(height: size.height * 0.02),
        ],
      ),
    );
  }
}
