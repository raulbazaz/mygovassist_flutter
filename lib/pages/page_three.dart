import 'package:flutter/material.dart';
import 'package:my_gov_assist/utils/appbar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_gov_assist/utils/searchbar.dart';

class PageThree extends StatefulWidget {
  final String? infoTitle;
  const PageThree({super.key, this.infoTitle});

  @override
  State<PageThree> createState() => _PageThree();
}

class _PageThree extends State<PageThree> {
  int _numOfSchemes = 3; // Example value
  String? infoTitle;

  void setHead() {
    setState(() {
      infoTitle = 'Hello';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: MyAppBar(),
      ),
      body: Column(
        children: [
          MySearchBar(), // search bar created separately in utils/searchbar.dart
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: 'We found ',
                    style: GoogleFonts.inter(
                      textStyle: const TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  TextSpan(
                    text: '$_numOfSchemes ',
                    style: GoogleFonts.inter(
                      textStyle: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  TextSpan(
                    text: 'schemes based on your preferences',
                    style: GoogleFonts.inter(
                      textStyle: const TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: ListView(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
              children: [
                buildInfoCard(
                  title:
                      'Junior Research Fellowship (JRF) And Research Associateship (RA) For Foreign Nationals',
                  ministry: 'Ministry of Education',
                  description:
                      'The scheme was initiated keeping in view the political and cultural bilateral relations of India with other developing countries: Asia, Africa, Latin America. The scheme has opened new vistas for foreign students and teachers, enabling them to come to India and...',
                  tags: ['Fellowship', 'Foreign', 'Research'],
                ),
                buildInfoCard(
                  title:
                      'Free Education For Sports Medal Winners / Participants Of National/ International Events',
                  ministry: 'Ministry of Education',
                  description:
                      'The scheme of "Free Education for Sports Medal Winners / Participants of National/ International Events" is introduced by UGC, to provide financial assistance to the medal winners/elite sports persons studying in universities/colleges leading to all the full-time...',
                  tags: ['Education', 'Sports'],
                ),
                buildInfoCard(
                  title:
                      'Internship Scheme For PG/Research Students In Directorate General Of Trade Remedies (DGTR)',
                  ministry: 'Ministry of Commerce & Industry',
                  description:
                      'The Internship Scheme by the Directorate General of Trade Remedies (DGTR) provides opportunities for young scholars, especially from Law / Economics stream, interested in learning about trade remedial investigations.',
                  tags: ['Commerce', 'Internship'],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildInfoCard({
    required String title,
    required String ministry,
    required String description,
    required List<String> tags,
  }) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 16, 0, 0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: const Color.fromARGB(146, 41, 41, 41),
              spreadRadius: 2,
              blurRadius: 1.5,
              offset: const Offset(3, 3),
            ),
          ],
        ),
        child: SizedBox(
          width: 360,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(8, 8, 8, 0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    title,
                    style: GoogleFonts.inter(
                      textStyle: const TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(8, 2, 8, 0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    ministry,
                    style: GoogleFonts.inter(
                      textStyle: const TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(8, 8, 8, 0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    description,
                    style: GoogleFonts.inter(
                      textStyle: const TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Row(
                children: tags
                    .map(
                      (tag) => Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 4.0),
                        child: OutlinedButton(
                          style: OutlinedButton.styleFrom(
                            side: const BorderSide(
                                color: Colors.blue, width: 2.0),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                          onPressed: () {},
                          child: Text(
                            tag,
                            style: GoogleFonts.inter(
                              textStyle: const TextStyle(
                                color: Colors.blue,
                                fontSize: 14,
                              ),
                            ),
                          ),
                        ),
                      ),
                    )
                    .toList(),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(8, 5, 8, 5),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.blue,
                    ),
                    onPressed: () {},
                    child: const SizedBox(
                      width: 107,
                      child: Row(
                        children: [
                          Text(
                            'Read More',
                            style: TextStyle(color: Colors.white),
                          ),
                          SizedBox(width: 10),
                          Icon(
                            Icons.arrow_right_alt,
                            size: 24,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
