import 'package:flutter/material.dart';
import '../../widgets/profile_widgets.dart';

class HobbiesContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(top: 16, bottom: 16),
          child: Text(
            'Hobbies',
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: Colors.indigo,
              decoration: TextDecoration.underline,
            ),
          ),
        ),
        UnorderedList(items: [
          'I love maintaining LinksHub - a project with 2000+ Pull Requests and 450+ Stars.',
          'I frequently play chess on Lichess and have achieved a global ranking of 1400+ in Rapid chess.',
          'I also serve as a moderator and mentor for several communities on Discord.',
          'I have explored various fields, including:',
        ]),
        Container(
          margin: EdgeInsets.only(left: 60, right: 20),
          child: UnorderedList(
            items: [
              'I have dedicated over 800 hours to UI/UX Designing.',
              'I have completed a Research internship.',
              'I\'ve launched design assets on Gumroad.',
              'I\'ve created more than 30 design mockups on Dribbble.',
              'I have over 30 projects on GitHub.',
              'I\'ve won more than 7 competitions.',
              'I have more than 150 followers on GitHub, ranking in the top 6% globally.',
              'I regularly interact with dozens of people and collaborate with a few of them.',
              'I\'ve written content for an audience of over 2 lakhs and have received 20k+ views on my blogs.',
              'I\'ve contributed to more than 50 open-source projects and am part of several communities.',
            ],
          ),
        )
      ],
    );
  }
}
