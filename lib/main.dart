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
              margin: EdgeInsets.only(top: 2, bottom: 4),
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
              margin: EdgeInsets.only(top: 20), // Adjust the margin as needed
              child: Text(
                'Crafting products with Open Source at heart',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ),
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
                fontWeight: FontWeight.w300,
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
