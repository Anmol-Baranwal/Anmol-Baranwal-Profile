import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
              color: Colors.indigo.shade400,
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

class InfoRowItem extends StatelessWidget {
  final String heading;
  final String subtext;

  InfoRowItem({
    required this.heading,
    required this.subtext,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 8, bottom: 4), // Adjust the margin as needed
      child: Column(
        children: [
          Text(
            heading,
            style: TextStyle(
              fontWeight: FontWeight.w800,
              color: Colors.indigo.shade400,
            ),
          ),
          SizedBox(height: 4),
          Text(
            subtext,
            style: TextStyle(
              fontWeight: FontWeight.w800,
            ),
          ),
        ],
      ),
    );
  }
}

class InfoRow extends StatelessWidget {
  final String heading1;
  final String subtext1;
  final String heading2;
  final String subtext2;
  final String heading3;
  final String subtext3;

  InfoRow({
    required this.heading1,
    required this.subtext1,
    required this.heading2,
    required this.subtext2,
    required this.heading3,
    required this.subtext3,
  });

  @override
  Widget build(BuildContext context) {
    // Define the InfoRowItems for both columns
    InfoRowItem infoRowItem1 =
        InfoRowItem(heading: heading1, subtext: subtext1);
    InfoRowItem infoRowItem2 =
        InfoRowItem(heading: heading2, subtext: subtext2);
    InfoRowItem infoRowItem3 =
        InfoRowItem(heading: heading3, subtext: subtext3);

    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [infoRowItem1],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                SizedBox(height: 4),
                infoRowItem2, // Reuse the InfoRowItem widget
              ],
            ),
            Column(
              children: [
                SizedBox(height: 8),
                infoRowItem3, // Reuse the InfoRowItem widget
              ],
            ),
          ],
        ),
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

class SocialMediaRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
          top: 0, bottom: 24), // Add margin to the whole container
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SocialIcon(
            icon: FontAwesomeIcons.linkedin,
            link: Uri.parse('https://www.linkedin.com/in/Anmol-Baranwal/'),
            subtext: 'LinkedIn',
          ),
          SocialIcon(
            icon: FontAwesomeIcons.github,
            link: Uri.parse('https://github.com/Anmol-Baranwal'),
            subtext: 'GitHub',
          ),
          SocialIcon(
            icon: FontAwesomeIcons.twitter,
            link: Uri.parse('https://twitter.com/Anmol_Codes'),
            subtext: 'Twitter',
          ),
          SocialIcon(
            icon: FontAwesomeIcons.dev,
            link: Uri.parse('https://dev.to/anmolbaranwal'),
            subtext: 'Dev',
          )
        ],
      ),
    );
  }
}

class SocialIcon extends StatelessWidget {
  final IconData icon;
  final Uri link;
  final String subtext;

  SocialIcon({required this.icon, required this.link, required this.subtext});

  _launchURL() async {
    if (await canLaunchUrl(link)) {
      await launchUrl(link);
    } else {
      throw 'Could not launch $link';
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _launchURL, // Call _launchURL when tapped
      child: Column(
        children: [
          IconButton(
            icon: FaIcon(icon), // Use IconButton with FaIcon
            onPressed: _launchURL, // Added onPressed to IconButton
            iconSize: 22, // Icon Size
            color: Colors.black, // Color Of Icon
          ),
          Text(subtext),
        ],
      ),
    );
  }
}

class ClickableText extends StatelessWidget {
  final String text;
  final Uri link;

  ClickableText({required this.text, required this.link});

  _launchURL() async {
    if (await canLaunchUrl(link)) {
      await launchUrl(link);
    } else {
      throw 'Could not launch $link';
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _launchURL, // Call _launchURL when tapped
      child: Text(
        text,
        style: TextStyle(
          fontSize: 16,
          color: Colors.indigo,
          decoration: TextDecoration.underline, // Add underline
        ),
      ),
    );
  }
}
