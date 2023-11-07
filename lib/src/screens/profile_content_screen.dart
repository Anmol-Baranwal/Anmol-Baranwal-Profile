import 'package:flutter/material.dart';
import '../../widgets/profile_widgets.dart';

class ProfileContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Banner Image
        Transform.translate(
          offset: Offset(0, -75), // this is as per the banner
          child: ProfilePictureWidget(),
        ),
        Container(
          margin: EdgeInsets.only(top: 0),
          child: Text(
            'Anmol Baranwal',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center, // Center-align the text
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 2, bottom: 0),
          child: Text(
            'Haryana, India',
            style: TextStyle(
              fontSize: 14,
            ),
          ),
        ),
        SizedBox(height: 20),
        ColumnWithDivider(
          items: [
            ColumnWithDividerItem(text: '20+', subtext: 'Projects'),
            ColumnWithDividerItem(text: '150+', subtext: 'Followers (GitHub)'),
            ColumnWithDividerItem(text: '40k+', subtext: 'Blog Views'),
          ],
        ),
        SizedBox(height: 20),
        Container(
          margin: EdgeInsets.only(
              top: 20, bottom: 15), // Adjust the margin as needed
          child: Text(
            'Crafting products with Open Source at heart',
            style: TextStyle(
              fontSize: 14,
            ),
          ),
        ),
        // here we need to add
        SectionSeparator(),
        InfoRow(
          heading1: 'Email',
          subtext1: 'anmolbaranwal119@gmail.com',
          heading2: 'Born',
          subtext2: '9th November 2001',
          heading3: 'Phone',
          subtext3: '+91 8931073435',
        ),
        AboutMeContainer(
          title: 'About Me',
          content:
              'Loving open source, I\'m a passionate full-stack developer in the top 8% on GitHub, actively contributing to communities and maintaining @LinksHub. With a rank of 11 in @GSSoC\'23, I also served as a core team member and mentor. My technical writing has garnered over 40k+ views, and I recently completed Buildspace N&W S4, building designlyfe.tech.',
        ),
        SocialMediaRow(),
      ],
    );
  }
}

class AboutMeContainer extends StatelessWidget {
  final String title;
  final String content;

  AboutMeContainer({required this.title, required this.content});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      margin: EdgeInsets.only(top: 40, bottom: 16, left: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding:
                const EdgeInsets.only(left: 14), // Adjust the padding as needed
            child: Text(
              title,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 8),
          Padding(
            padding: const EdgeInsets.only(
                left: 14, right: 28, top: 8), // Adjust the padding as needed
            child: Text(
              content,
              style: TextStyle(
                fontSize: 14,
                height: 1.5, // Adjust the line height as needed
                letterSpacing: 0.5, // Adjust the letter spacing as needed
              ),
            ),
          ),
        ],
      ),
    );
  }
}
