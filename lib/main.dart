import 'package:flutter/material.dart';

void main() {
  runApp(ProfileApp());
}

class ProfileApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 150,
              child: Image.asset(
                'assets/banner.jpg', // Replace with the path to your banner image
                fit: BoxFit.cover,
                width: double.infinity, // Takes up the whole width
              ),
            ),
            Transform.translate(
              offset: Offset(0, -75), // this is as per the banner
              child: ProfilePictureWidget(),
            ),
            Container(
              margin:
                  EdgeInsets.only(top: 0), // Adjust the top margin as needed
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
                ColumnWithDividerItem(
                    text: '150+', subtext: 'Followers (GitHub)'),
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
            // ProfileRow(title: 'Born', subtext: 'DOB'),
            // ContactInfoRow(title1: 'Email', title2: 'Phone'),
            AboutMeContainer(
              title: 'About Me',
              content:
                  'Loving open source, I\'m a passionate full-stack developer in the top 8% on GitHub, actively contributing to communities and maintaining @LinksHub. With a rank of 11 in @GSSoC\'23, I also serve as a core team member and mentor. My technical writing has garnered over 40k+ views, and I recently completed Buildspace N&W S4, building something awesome.',
            ),
            SocialMediaRow(),
          ],
        ),
      )),
    );
  }
}

class ProfilePictureWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 150,
          width: 150,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(75),
            border: Border.all(
              color: Colors.white,
              width: 5,
            ),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(70),
            child: Image.asset(
              'assets/profile_pic.png', // Replace with your image path
              fit: BoxFit.cover,
            ),
          ),
        ),
      ],
    );
  }
}

class ColumnWithDividerItem {
  final String text;
  final String subtext;

  ColumnWithDividerItem({
    required this.text,
    required this.subtext,
  });
}

class ColumnWithDivider extends StatelessWidget {
  final List<ColumnWithDividerItem> items;

  ColumnWithDivider({required this.items});

  @override
  Widget build(BuildContext context) {
    List<Widget> columnsWithDivider = [];
    for (int i = 0; i < items.length; i++) {
      columnsWithDivider.add(Column(
        children: [
          Text(
            items[i].text,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          Container(
            margin: EdgeInsets.only(
                top: 4), // Add margin to create a gap between text and subtext
            child: Text(
              items[i].subtext,
              style: TextStyle(
                fontSize: 14,
              ),
            ),
          ),
        ],
      ));
      if (i < items.length - 1) {
        columnsWithDivider.add(
          Container(
            margin: EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              '|',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w200,
              ),
            ),
          ),
        );
      }
    }

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: columnsWithDivider,
    );
  }
}

class SectionSeparator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20), // Add a margin at the bottom
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey, // Shadow color
            offset: Offset(0, 2), // Shadow offset
            blurRadius: 4, // Shadow blur radius
          ),
        ],
      ),
      child: Container(
        height: 2,
        margin: EdgeInsets.only(left: 40, right: 40),
        color: Colors.black,
      ),
    );
  }
}

class ProfileRow extends StatelessWidget {
  final String title;
  final String subtext;

  ProfileRow({required this.title, required this.subtext});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Text(
            title,
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Expanded(
          child: Text(
            subtext,
          ),
        ),
      ],
    );
  }
}

class ContactInfoRow extends StatelessWidget {
  final String title1;
  final String title2;

  ContactInfoRow({required this.title1, required this.title2});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
              child: ProfileRow(title: title1, subtext: 'example@email.com')),
          Expanded(child: ProfileRow(title: title2, subtext: '+123 456 7890')),
        ],
      ),
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
      margin: EdgeInsets.only(top: 16, bottom: 36, left: 16),
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

class SocialMediaRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        SocialIcon(icon: Icons.link, link: 'linkedin.com'),
        SocialIcon(icon: Icons.link, link: 'twitter.com'),
        SocialIcon(icon: Icons.link, link: 'github.com'),
        SocialIcon(icon: Icons.link, link: 'example.com'),
      ],
    );
  }
}

class SocialIcon extends StatelessWidget {
  final IconData icon;
  final String link;

  SocialIcon({required this.icon, required this.link});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          size: 36,
          color: Colors.blue,
        ),
        Text(link),
      ],
    );
  }
}
