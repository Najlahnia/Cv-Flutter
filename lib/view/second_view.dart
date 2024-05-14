import 'package:cvfinal/data/dev_data.dart';
import 'package:cvfinal/utils/app_str.dart';
import 'package:cvfinal/widgets/contact_card.dart';
import 'package:flutter/material.dart';

class SecondView extends StatelessWidget {
  const SecondView({Key? key, required this.nextPage}) : super(key: key);

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
                Text(DevData.devData.bio, style: theme.textTheme.bodyText2),
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
                Text(AppStrings.secondScreenDiplome, style: theme.textTheme.subtitle2),
                SizedBox(height: size.height * .005),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: List.generate(
                    DevData.devData.education.length,
                    (index) {
                      if (index == 0) {
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("${index + 1}. ${DevData.devData.education[index]}", style: theme.textTheme.bodyText2),
                            SizedBox(height: size.height * 0.01),
                          ],
                        );
                      } else {
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("${index + 1}. ${DevData.devData.education[index]}", style: theme.textTheme.bodyText2),
                            SizedBox(height: size.height * 0.01),
                            DropdownButton<String>(
                              hint: Text('Choose an option'),
                              value: null,
                              onChanged: (newValue) {},
                              items: <String>[
                                'Option 1',
                                'Option 2',
                                'Option 3',
                              ].map<DropdownMenuItem<String>>((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
                            ),
                            SizedBox(height: size.height * 0.02),
                          ],
                        );
                      }
                    },
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

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                color: theme.canvasColor,
                onPressed: nextPage,
                icon: const Icon(Icons.arrow_downward_outlined),
              ),
              IconButton(
                color: theme.canvasColor,
                onPressed: nextPage,
                icon: const Icon(Icons.arrow_upward_outlined),
              ),
            ],
          ),

          SizedBox(height: size.height * 0.02),
        ],
      ),
    );
  }
}
