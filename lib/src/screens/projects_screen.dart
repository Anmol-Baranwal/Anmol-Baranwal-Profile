import 'package:flutter/material.dart';
import '../../widgets/profile_widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
          description: '''50+ Upvotes on Product Hunt. 
            I leveraged GitHub to meticulously curate a diverse collection of illustrations, Icons, and Mockups that showcase different styles. The collection is categorized into four distinct groups and currently features over 160 high-quality illustration sets. Each illustration set is accompanied by a preview image, name, category, available formats, and author information, providing all the necessary details in one place.''',
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

class ProjectDetails extends StatelessWidget {
  final String title;
  final String description;
  final List<String> techStack;
  final bool? githubIcon;
  final Uri? githubLink;
  final bool? deploymentIcon;
  final Uri? deploymentLink;
  final bool? videoIcon;
  final Uri? videoLink;
  final bool? documentIcon;
  final Uri? documentLink;
  final IconData? extraIcon;
  final String? extraText;

  ProjectDetails({
    required this.title,
    required this.description,
    required this.techStack,
    this.githubIcon,
    this.githubLink,
    this.deploymentIcon,
    this.deploymentLink,
    this.videoIcon,
    this.videoLink,
    this.documentIcon,
    this.documentLink,
    this.extraIcon,
    this.extraText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20), // Add padding to the whole widget
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 16),
            child: Row(
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                    color: Colors.indigo.shade600,
                  ),
                ),
                if (extraIcon != null && extraText != null)
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(
                            right: 6, left: 6), // Add margin for extraIcon
                        child: Icon(extraIcon, size: 10),
                      ),
                      Text(
                        extraText!,
                        style: TextStyle(
                          fontSize: 10,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
              ],
            ),
          ),
          Text(
            description,
            style: TextStyle(fontSize: 16),
          ),
          SizedBox(height: 6),
          Wrap(
            children: [
              Text(
                'Tech Stack: ',
                style: TextStyle(
                  fontSize: 12,
                  fontStyle: FontStyle.italic,
                  color: Colors.black,
                ),
              ),
              for (int i = 0; i < techStack.length; i++)
                Text(
                  techStack[i] + (i != techStack.length - 1 ? ', ' : ''),
                  style: TextStyle(
                    fontSize: 14,
                    fontStyle: FontStyle.italic,
                    color: Colors.black,
                  ),
                ),
            ],
          ),
          Row(
            children: [
              if (githubIcon != null && githubLink != null)
                SocialIcon(
                  icon: FontAwesomeIcons.github,
                  link: githubLink!,
                  size: 16,
                ),
              if (deploymentIcon != null && deploymentLink != null)
                SocialIcon(
                  icon: FontAwesomeIcons.laptopCode,
                  link: deploymentLink!,
                  size: 16,
                ),
              if (videoIcon != null && videoLink != null)
                SocialIcon(
                  icon: FontAwesomeIcons.play,
                  link: videoLink!,
                  size: 16,
                ),
              if (documentIcon != null && documentLink != null)
                SocialIcon(
                  icon: FontAwesomeIcons.fileCode,
                  link: documentLink!,
                  size: 16,
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
