import 'package:flutter/material.dart';
import '../../widgets/profile_widgets.dart';

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
          title: 'Guidlify (Philippines)',
          role: 'Frontend Developer',
          points: [
            'I\'m also working with senior developers from France, Indonesia, and the Philippines. ',
            'It\'s worth noting that I\'m the sole member from India in this diverse team. (7 Member Team). We are working on connecting sponsors and tech community events.',
          ],
          place: 'Remote',
          date: 'Ongoing',
        ),
        InternshipContent(
          title: 'GirlScript Summer of Code',
          role: 'Mentor',
          points: [
            'I was thrilled to have served as a mentor for WebXDAO (Open Source Organization from Philippines) during GSSoC\'23, with Vincent as the Project Admin. ',
            'During my tenure, I actively assisted other contributors and reviewed over 75 PRs',
          ],
          place: 'Remote',
          date: 'June 2023 - Aug 2023',
        ),
        InternshipContent(
          title: 'GirlScript Summer of Code',
          role: 'Frontend Developer',
          points: [
            'Merged 100+ Pull Requests, enhancing LinksHub with features and raising it to 400+ Stars on GitHub. ',
            'Secured the 11th rank at GSSoC\'23.',
          ],
          place: 'Remote',
          date: 'May 2023 - Aug 2023',
        ),
        InternshipContent(
          title: 'GirlScript Summer of Code',
          role: 'Core Team',
          points: [
            'Integral member of Core Team, organizing engaging technical events and creating impactful content for two lakh+ audience on LinkedIn, Twitter, Instagram, and Discord.',
          ],
          place: 'Remote',
          date: 'April 2023 - Aug 2023',
        ),
        InternshipContent(
          title: 'NICMAR University',
          role: 'Research Intern',
          points: [
            'Conducted extensive digital surveys & compiled a database of 10,000 schools and colleges in India, utilizing the essential data for comprehensive analysis.',
            'I completed the quantitative analysis using the data collected over 1.5 months, utilizing advanced methods with a pivot table.',
          ],
          place: 'Maharashtra, India',
          date: 'May 2022 - July 2022',
        ),
        InternshipContent(
          title: 'Khajuribazar Co.,Ltd.',
          role: 'UI/UX Designer',
          points: [
            'Designed the complete checkout flow, created 50+ nested components, and worked on 75+ artboards with complete responsive design from scratch using proper analytics.',
            'Researched pain points to make the user experience smoother using Personas and User Journeys.',
          ],
          place: 'Remote',
          date: 'Jan 2022 - April 2022',
        ),
      ],
    );
  }
}

class InternshipContent extends StatelessWidget {
  final String title;
  final String role;
  final List<String> points;
  final String place;
  final String date;
  final IconData? icon; // Make icon and text optional
  final String? extraText;

  InternshipContent({
    required this.title,
    required this.role,
    required this.points,
    required this.place,
    required this.date,
    this.icon, // Initialize icon and text as optional
    this.extraText,
  });

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
                    title,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    role,
                    style: TextStyle(
                      fontSize: 14,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  SizedBox(height: 2),
                  Text(
                    place,
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.indigo.shade600,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    date,
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  if (icon != null && extraText != null)
                    Row(
                      children: [
                        SocialIcon(
                          icon: icon!,
                          link: Uri.parse(
                              'https://example.com/'), // Replace with your link
                          size: 16,
                        ),
                        Text(
                          extraText!,
                          style: TextStyle(
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                ],
              ),
            ],
          ),
          UnorderedListInternship(items: points),
          Container(
            margin: EdgeInsets.only(
              top: 20,
              bottom: 20,
            ),
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
