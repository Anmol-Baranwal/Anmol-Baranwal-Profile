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
            Text(
              'Anmol Baranwal',
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Samalkha, Haryana',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            SizedBox(height: 20),
            ColumnWithDivider(
              items: [
                ColumnWithDividerItem(text: '20+', subtext: 'Projects'),
                ColumnWithDividerItem(
                    text: '150+', subtext: 'Followers (GitHub)'),
                ColumnWithDividerItem(text: '40k+', subtext: 'Views on Blogs'),
              ],
            ),
            SizedBox(height: 20),
            Text(
              'Additional text',
              style: TextStyle(
                fontSize: 18,
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
      columnsWithDivider.add(
        Column(
          children: [
            Text(
              items[i].text,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              items[i].subtext,
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ],
        ),
      );
      if (i < items.length - 1) {
        columnsWithDivider.add(
          Text(
            '|',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
        );
      }
    }

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: columnsWithDivider,
    );
  }
}
