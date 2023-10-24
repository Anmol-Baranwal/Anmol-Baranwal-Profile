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
          title: '1. Designlyfe',
          description:
              'Simplest way to find design assets. a personalized dashboard with a public profile for each user. This dashboard has features such as upvoting, bookmarking, and sharing. More than 200+ Users for alpha testing.',
          techStack: [
            'TypeScript',
            'nextjs',
            'Tailwind',
            'Firebase',
            'Postman',
            'Firestore',
            'Git'
          ],
          githubIcon: false,
          // githubLink: Uri.parse('https://github.com/yourproject1'),
          deploymentIcon: false,
          deploymentLink: Uri.parse('https://www.designlyfe.tech/'),
          videoIcon: true,
          videoLink: Uri.parse('https://buildspace.so/s4/demoday/designlyfe'),
          documentIcon: false,
          // documentLink: Uri.parse('https://example.com/project1document'),
          extraIcon: FontAwesomeIcons.codeCommit,
          extraText: '20k+ Lines of Code & 14+ Backend APIs',
        ),
        Container(
          margin: EdgeInsets.only(top: 16, bottom: 16),
          child: Text(
            '-[ B.Tech Project ]-',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.black54,
            ),
          ),
        ),
        ProjectDetails(
          title: '2. WaitSmart',
          description:
              'This project aims to facilitate efficient queue management in various settings, such as hospitals or other establishments. Users can wait comfortably from their location and receive notifications when it\'s their turn. Doctors will have the ability to manage patients. It may not work due to firestore security rules.',
          techStack: [
            'Firebase',
            'JavaScript',
            'React.js',
            'Postman',
            'CSS3',
            'Nextjs',
            'Firestore'
          ],
          githubIcon: true,
          githubLink: Uri.parse('https://github.com/Anmol-Baranwal/WaitSmart'),
          deploymentIcon: true,
          deploymentLink: Uri.parse('https://wait-smart-chi.vercel.app/'),
          extraIcon: FontAwesomeIcons.teamspeak,
          extraText: '3+ Team Size',
        ),
        ProjectDetails(
          title: '3. Coffee Compass',
          description:
              'Users can search for coffee shops and upvote them for others to see. The project also features an Airtable database that makes it easier to access and manage the information.',
          techStack: [
            'Nextjs',
            'JavaScript',
            'React.js',
            'Postman',
            'Airtable',
            'CSS3',
            'Git'
          ],
          githubIcon: true,
          githubLink:
              Uri.parse('https://github.com/Anmol-Baranwal/Coffee-Compass'),
          deploymentIcon: true,
          deploymentLink:
              Uri.parse('https://coffee-project-anmol-baranwal.vercel.app/'),
        ),
        ProjectDetails(
          title: '4. BabySteps',
          description:
              'This project retrieves user information from an external API endpoint and displays them in a paginated table. It also offers a search feature that enables users to filter the user list by name or email.',
          techStack: ['Nextjs', 'JavaScript', 'Postman', 'Lighthouse', 'CSS3'],
          githubIcon: true,
          githubLink:
              Uri.parse('https://github.com/Anmol-Baranwal/BabySteps-Project'),
          deploymentIcon: true,
          deploymentLink: Uri.parse('https://baby-steps-rho.vercel.app/'),
        ),
        ProjectDetails(
          title: '5. Full Stack MongoDB Query Fetcher',
          description:
              'The application enables users to perform queries on a MongoDB database and displays the results in a table. It includes a homepage with a drop-down menu that triggers different queries to the MongoDB database.',
          techStack: [
            'Nextjs',
            'Nodejs',
            'Expressjs',
            'JavaScript',
            'MongoDB',
            'MongoDB Compass',
            'Postman',
            'CSS3'
          ],
          githubIcon: true,
          githubLink: Uri.parse(
              'https://github.com/Anmol-Baranwal/MongoDB-Query-Fetcher'),
          deploymentIcon: true,
          deploymentLink:
              Uri.parse('https://mongodb-query-fetcher.vercel.app/'),
          documentIcon: true,
          documentLink: Uri.parse(
              'https://github.com/Anmol-Baranwal/MongoDB-Query-Fetcher/blob/main/Queries_Explanation.md'),
        ),
        ProjectDetails(
          title: '7. TaskMaster',
          description:
              'Users can add, delete, and customize their to-do list items. With the help of route parameters, users can create multiple lists and navigate them with ease.',
          techStack: [
            'Nodejs',
            'Expressjs',
            'MongoDB',
            'Bootstrap',
            'EJS Template',
            'CSS3'
          ],
          githubIcon: true,
          githubLink:
              Uri.parse('https://github.com/Anmol-Baranwal/ToDo-List-WebApp'),
          deploymentIcon: true,
          deploymentLink: Uri.parse('https://todo-list-k7qu.onrender.com/'),
          extraIcon: FontAwesomeIcons.star,
          extraText: '5 Stars',
        ),
        ProjectDetails(
          title: '8. Portfolio of Client',
          description:
              'Portfolio of Akanksha Baranwal made using HTML5, CSS3, JavaScript with sidebar & awesome functionalities.',
          techStack: ['JavaScript', 'JQuery', 'HTML5', 'Bootstrap', 'CSS3'],
          githubIcon: true,
          githubLink:
              Uri.parse('https://github.com/Anmol-Baranwal/Portfolio-Akanksha'),
          deploymentIcon: true,
          deploymentLink:
              Uri.parse('https://portfolio-akanksha-three.vercel.app/'),
          extraIcon: FontAwesomeIcons.star,
          extraText: '5 Stars',
        ),
        ProjectDetails(
          title: '10. The Notes Keeper app',
          description:
              'The goal was to develop a simple and efficient tool for creating quick notes that feature a title and content. To achieve this objective, I utilized the power of React and integrated several essential concepts, resulting in a feature-rich and easy-to-use application.',
          techStack: [
            'JavaScript',
            'React.js',
            'HTML5',
            'CSS3',
          ],
          deploymentIcon: true,
          deploymentLink:
              Uri.parse('https://notes-keeper-app-i91s.vercel.app/'),
          videoIcon: false,
          // videoLink: Uri.parse('https://buildspace.so/s4/demoday/designlyfe'),
        ),
        ProjectDetails(
          title: '11. Awesome Illustrations',
          description:
              '50+ Upvotes on Product Hunt. I leveraged GitHub to meticulously curate a diverse collection of illustrations, Icons, and Mockups that showcase different styles. The collection is categorized into four distinct groups and currently features over 160 high-quality illustration sets. Each illustration set is accompanied by a preview image, name, category, available formats, and author information, providing all the necessary details in one place.',
          techStack: [
            'Markdown',
          ],
          githubIcon: true,
          githubLink: Uri.parse(
              'https://github.com/Anmol-Baranwal/Awesome-Illustrations-4Projects'),
          videoIcon: true,
          videoLink: Uri.parse('https://youtu.be/Usqv3n6KTM8'),
          extraIcon: FontAwesomeIcons.star,
          extraText: '70+ Stars on GitHub',
        ),
        ProjectDetails(
          title: '12. Password Power',
          description:
              'I leveraged GitHub to meticulously curate a diverse collection of illustrations, Icons, and Mockups that showcase different styles. The collection is categorized into four distinct groups and currently features over 160 high-quality illustration sets. Each illustration set is accompanied by a preview image, name, category, available formats, and author information, providing all the necessary details in one place.',
          techStack: ['JavaScript', 'CSS3', 'HTML5'],
          deploymentIcon: true,
          deploymentLink: Uri.parse(
              'https://password-generator-anmol-baranwal.vercel.app/'),
        ),
        ProjectDetails(
          title: '13. Color Shade Tool',
          description:
              'This mini-project is focused on identifying complementary dark or light tone colors that correspond to a given base color. The emphasis was on developing a simple and functional tool, rather than prioritizing an elaborate user interface.',
          techStack: ['JavaScript', 'CSS3', 'HTML5'],
          deploymentIcon: true,
          deploymentLink: Uri.parse('https://color-darken-tool.vercel.app/'),
        ),
        ProjectDetails(
          title: '14. Conceptual Projects',
          description:
              'Small yet powerful projects that I have made for learning new concepts.',
          techStack: [
            'JavaScript',
            'SCSS',
            'Tailwind',
            'jQuery',
            'Nodejs',
            'Expressjs',
            'CSS3'
          ],
          githubIcon: true,
          githubLink: Uri.parse(
              'https://github.com/Anmol-Baranwal/Conceptual-Projects'),
        ),
        ProjectDetails(
          title: '15. Plasmo Chrome Extension',
          description:
              'A chrome extension that displays your country name and city based on your current IP Address.',
          techStack: [
            'Plasmo Framework',
            'TypeScript',
            'Tailwind',
            'Google Chrome Browser'
          ],
          githubIcon: true,
          githubLink: Uri.parse(
              'https://github.com/Anmol-Baranwal/country-chrome-extension'),
        ),
        ProjectDetails(
          title: '16. C++ Special Programs',
          description:
              'Collection of various C++ programs aimed at reinforcing fundamental concepts. It encompasses a comprehensive implementation of Tic-Tac-Toe, featuring both computer vs. computer and human vs. computer modes, considering every corner case, utilizing the Standard Template Library.',
          techStack: [
            'C++',
          ],
          githubIcon: true,
          githubLink: Uri.parse(
              'https://github.com/Anmol-Baranwal/CPP-Special-Programs'),
        ),
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
        InternshipContent(
          title: 'Company Name 2',
          role: 'Intern',
          points: [
            'Achievement 1',
            'Achievement 2',
          ],
          place: 'Location 2',
          date: 'Date 2',
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
