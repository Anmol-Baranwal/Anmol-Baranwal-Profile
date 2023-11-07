import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:dot_navigation_bar/dot_navigation_bar.dart';
import './education_screen.dart';
import './projects_screen.dart';
import './internships_screen.dart';
import './hobbies_screen.dart';
import './profile_content_screen.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  int _currentTab = 0;

  void _selectTab(int tab) {
    setState(() {
      _currentTab = tab;
    });
  }

  List<Widget> _tabs = [
    ProfileContent(),
    EducationContent(),
    ProjectsContent(),
    InternshipsContent(),
    HobbiesContent(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 150,
              child: Image.asset(
                'assets/banner.png', // Replace with the path to your banner image
                fit: BoxFit.cover,
                width: double.infinity, // Takes up the whole width
              ),
            ),
            _tabs[_currentTab],
          ],
        ),
      ),
      bottomNavigationBar: DotNavigationBar(
        currentIndex: _currentTab,
        onTap: _selectTab,
        items: [
          DotNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.userAstronaut),
            selectedColor: Colors.teal,
          ),
          DotNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.graduationCap),
            selectedColor: Colors.purple,
          ),
          DotNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.code),
            selectedColor: Colors.pink,
          ),
          DotNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.briefcase),
            selectedColor: Colors.orange,
          ),
          DotNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.futbol),
            selectedColor: Colors.teal,
          ),
        ],
      ),
    );
  }
}
