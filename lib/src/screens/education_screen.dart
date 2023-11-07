import 'package:flutter/material.dart';

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
