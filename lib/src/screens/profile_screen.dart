import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../widgets/profile_widgets.dart';
import 'package:dot_navigation_bar/dot_navigation_bar.dart';

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
                'assets/banner.jpg', // Replace with the path to your banner image
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
          margin: EdgeInsets.only(top: 0), // Adjust the top margin as needed
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

class EducationContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(top: 16, bottom: 16),
          child: Text(
            'Education',
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: Colors.indigo,
              decoration: TextDecoration.underline,
            ),
          ),
        ),
        EducationList(
          degree: 'B.Tech',
          institution: 'Panipat Institute of Engineering & Technology',
          program: 'Computer Science and Engineering',
          cgpa: '8.86',
          location: 'Haryana, India',
          date: '2020 - 2024',
        ),
        EducationList(
          degree: '12th Class',
          institution: 'Green View Public School',
          location: 'Uttar Pradesh, India',
          cgpa: '88.2',
          type: 'percentage',
          date: '2017 - 2019',
        ),
        EducationList(
          degree: '10th Class',
          institution: 'Wood Ward Public School',
          cgpa: '10',
          location: 'Uttar Pradesh, India',
          date: '2015 - 2017',
        ),
      ],
    );
  }
}

class EducationList extends StatelessWidget {
  final String degree;
  final String institution;
  final String program;
  final String cgpa;
  final String location;
  final String date;
  final String type;

  EducationList(
      {required this.degree,
      required this.institution,
      this.program = "",
      this.cgpa = "",
      required this.location,
      required this.date,
      this.type = "cgpa"});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20, bottom: 20, left: 20, right: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    degree,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w200,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    institution,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 4),
                  if (program.isNotEmpty)
                    Text(
                      program,
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                  SizedBox(height: 2),
                  if (type.isNotEmpty)
                    Text(
                      '$type:$cgpa',
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  SizedBox(height: 2),
                  Text(
                    location,
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.indigo.shade600,
                        fontStyle: FontStyle.italic),
                  ),
                  SizedBox(height: 4),
                  Text(
                    date,
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(
                top: 20, bottom: 20), // Add a margin at the bottom
            child: Container(
              height: 2,
              margin: EdgeInsets.only(left: 200, right: 200),
              color: Colors.black26,
            ),
          ),
        ],
      ),
    );
  }
}

class ProjectsContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(top: 16, bottom: 16),
          child: Text(
            'Projects',
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: Colors.indigo,
              decoration: TextDecoration.underline,
            ),
          ),
        ),
        ProjectDetails(
          title: 'Project 1 Title',
          description: 'Description of Project 1...',
          techStack: ['firebase', 'nextjs'],
          githubIcon: true, // Display the GitHub icon
          githubLink: Uri.parse('https://github.com/yourproject1'),
          deploymentIcon: false, // Do not display the deployment icon
          videoIcon: true, // Display the video icon
          videoLink: Uri.parse('https://youtube.com/yourproject1video'),
          documentIcon: true, // Display the document icon
          documentLink: Uri.parse('https://example.com/project1document'),
          extraIcon: FontAwesomeIcons.star,
          extraText: '200+ stars',
        ),
        ProjectDetails(
          title: 'Project 2 Title',
          description: 'Description of Project 2...',
          techStack: ['firebase', 'nextjs'],
          githubIcon: true, // Display the GitHub icon
          githubLink: Uri.parse('https://github.com/yourproject2'),
          deploymentIcon: true, // Display the deployment icon
          deploymentLink: Uri.parse('https://yourproject2.com'),
          videoIcon: false, // Do not display the video icon
          documentIcon: false, // Do not display the document icon
        ),
        // Add more ProjectDetails widgets for other projects
      ],
    );
  }
}

class InternshipsContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(top: 16, bottom: 16),
          child: Text(
            'Internships',
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: Colors.indigo,
              decoration: TextDecoration.underline,
            ),
          ),
        ),
      ],
    );
  }
}

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
          'I love maintaining LinksHub - a project with 2000+ PRs and 450+ Stars',
          'I often play chess on Lichess and have a global ranking of 1400+ in Rapid',
          'I also manage several communities in discord and act as a mentor for beginners',
          'I also explore things',
          // [  // nested unordered lists
          //   'I have done UI/UX Designing for 800+ hrs',
          //   'Research internship',
          //   'Launched design assets on gumroad',
          //   'Made more than 30+ design mockups on Dribbble',
          //   'Have 30+ projects on GitHub',
          //   'Did mentoring',
          //   'Won 7+ competitions',
          //   'Have more than 150 followers on GitHub, being top 6% globally',
          //   'Interact with dozens of people and collaborate with a few of them',
          //   'Written content for 2 lakh+ audience and have 20k+ views on blogs',
          //   'Contributed to more than 50 open-source projects and is part of several communities',
          // ],
        ]),
        Container(
          margin: EdgeInsets.only(left: 60),
          child: UnorderedList(
            items: [
              'I have done UI/UX Designing for 800+ hrs',
              'Research internship',
              'Launched design assets on gumroad',
              'Made more than 30+ design mockups on Dribbble',
              'Have 30+ projects on GitHub',
              'Did mentoring',
              'Won 7+ competitions',
              'Have more than 150 followers on GitHub, being top 6% globally',
              'Interact with dozens of people and collaborate with a few of them',
              'Written content for 2 lakh+ audience and have 20k+ views on blogs',
              'Contributed to more than 50 open-source projects and is part of several communities',
            ],
          ),
        )
      ],
    );
  }
}

class UnorderedList extends StatelessWidget {
  final List<dynamic> items;

  UnorderedList({required this.items});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: items.map((item) {
        return ListTile(
          leading: Icon(
            FontAwesomeIcons.circleDot,
            size: 6,
            color: Colors.indigo.shade600,
          ),
          title: item is String ? Text(item) : UnorderedList(items: item),
        );
      }).toList(),
    );
  }
}
