import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ignite_2023/widgets/navigation_bar.dart';
import "package:ignite_2023/widgets/footer.dart";
import "package:ignite_2023/widgets/team_card.dart";

class OrganizingCommittee extends StatefulWidget {
  const OrganizingCommittee({super.key});

  @override
  State<OrganizingCommittee> createState() => _OrganizingCommitteeState();
}

class _OrganizingCommitteeState extends State<OrganizingCommittee> {
  String? fontMain = GoogleFonts.ebGaramond().fontFamily;
  ScrollController scroller = ScrollController();

  @override
  Widget build(BuildContext context) {

    if (MediaQuery.of(context).orientation == Orientation.landscape) {
    return Scaffold(
      appBar: getTopBar(context),
      drawer: getDrawer(context),
      backgroundColor: Colors.black,
      body: RawScrollbar(
        thumbColor: Color(0xFF313133),
        thickness: 10,
        thumbVisibility: true,
        trackVisibility: true,
        controller: scroller,
        child: SingleChildScrollView(
          controller: scroller,
          child: Container(
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text(
                    "For the people who made this event possible! ❤",
                    style: TextStyle(
                        fontSize: 50,
                        color: Colors.white,
                        fontFamily: fontMain),
                  ),
                ),
                Team(
                  teamName: "IGNITE Heads",
                  members: [
                    "Aashir Nair",
                    "Akshara Bhat",
                    "Parisa Singh",
                    "Viswanath Missula"
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Team(
                      teamName: "Cultural",
                      members: [
                        "Aanvi Sharma",
                        "Eshwari Gundi",
                        "Kaavya Dasgupta",
                        "Puja Shirguppi"
                      ],
                    ),
                    Team(
                      teamName: "Design",
                      members: [
                        "Anya Sapru",
                        "Lalitha Rao",
                        "Manavi Nath",
                        "Soham Vatsa",
                        "Vriti Jain"
                      ],
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Team(
                      teamName: "Documentation & Outsourcing",
                      members: [
                        "Neel Bansal",
                        "Raina Dekate",
                        "Rishabh Kumar",
                        "Ruth Gandhi"
                      ],
                    ),
                    Team(
                      teamName: "Finance",
                      members: [
                        "Chetan Padavala",
                        "Mukul Kumar",
                        "Parisa Singh",
                        "Soham Dhar"
                      ],
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Team(
                      teamName: "Food",
                      members: ["Dishant Kumar", "Pranav Muralikrishnan"],
                    ),
                    Team(
                      teamName: "Logistics",
                      members: [
                        "Amogh Rao",
                        "Ananya Sharda",
                        "Disha Boorela",
                        "Marc George"
                      ],
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Team(
                      teamName: "Marketing/Social Media",
                      members: [
                        "Ananya Mehrotra",
                        "Arya Padiyar",
                        "Rachel Daniel",
                        "Sanvi Dange"
                      ],
                    ),
                    Team(
                      teamName: "Merchandising",
                      members: [
                        "Ayra Khetan",
                        "Somya Gupta",
                        "Surya Sivakumar"
                      ],
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Team(
                      teamName: "Photography",
                      members: [
                        "Srishti Sudarshan",
                        "Aarnav Jain",
                      ],
                    ),
                    Team(
                      teamName: "Public Relations",
                      members: [
                        "Neve Bangalore",
                        "Saanvi Madduri",
                        "Tisya Munjal",
                        "Vishruth Jasti"
                      ],
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Team(
                      teamName: "Registrations",
                      members: [
                        "Adyaa Mishra",
                        "Asheera Kaul",
                        "Mihir Halapeth",
                        "Nidhi Iyengar",
                        "Niyati Kumar"
                      ],
                    ),
                    Team(
                      teamName: "Security",
                      members: [
                        "Anirudh Chaturvedula",
                        "Ishan Wanchoo",
                        "Venkat Yendluri"
                      ],
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Team(
                      teamName: "Sponsorship",
                      members: [
                        "Allen Goveas",
                        "Aryan Akarsh",
                        "Dhyan Balasubramaniam",
                        "Harshit Jain"
                      ],
                    ),
                    Team(
                      teamName: "Sports",
                      members: [
                        "Fahim Bawahir",
                        "Pavan Nandhakumar",
                        "Shashank Balaji",
                        "Varun Bhardwaj"
                      ],
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Team(
                      teamName: "Technology",
                      members: [
                        "Arushi Goel",
                        "Prajwal Reddy",
                        "Sankalp Krishnamurthy",
                        "Srivishnu Vusirikala"
                      ],
                    ),
                    Team(
                      teamName: "Venue Management",
                      members: [
                        "Dhruv Mittal",
                        "Kriti Farswal",
                        "Nitesh Kothari"
                      ],
                    ),
                  ],
                ),
                footer(
                    MediaQuery.of(context).orientation == Orientation.landscape,
                    context)
              ],
            ),
          ),
        ),
      ),
    );
    } else {
      return Scaffold(
      appBar: getTopBar(context),
      drawer: getDrawer(context),
      backgroundColor: Colors.black,
      body: RawScrollbar(
        thumbColor: Color(0xFF313133),
        thickness: 10,
        thumbVisibility: true,
        trackVisibility: true,
        controller: scroller,
        child: SingleChildScrollView(
          controller: scroller,
          child: Container(
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text(
                    "For the people who made this event possible! ❤",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 50,
                        color: Colors.white,
                        fontFamily: fontMain),
                  ),
                ),
                Team(
                  teamName: "IGNITE Heads",
                  members: [
                    "Aashir Nair",
                    "Akshara Bhat",
                    "Parisa Singh",
                    "Viswanath Missula"
                  ],
                ),
                Team(
                  teamName: "Cultural",
                  members: [
                    "Aanvi Sharma",
                    "Eshwari Gundi",
                    "Kaavya Dasgupta",
                    "Puja Shirguppi"
                  ],
                ),
                Team(
                  teamName: "Design",
                  members: [
                    "Anya Sapru",
                    "Lalitha Rao",
                    "Manavi Nath",
                    "Soham Vatsa",
                    "Vriti Jain"
                  ],
                ),
                Team(
                  teamName: "Documentation & Outsourcing",
                  members: [
                    "Neel Bansal",
                    "Raina Dekate",
                    "Rishabh Kumar",
                    "Ruth Gandhi"
                  ],
                ),
                Team(
                  teamName: "Finance",
                  members: [
                    "Chetan Padavala",
                    "Mukul Kumar",
                    "Parisa Singh",
                    "Soham Dhar"
                  ],
                ),
                Team(
                  teamName: "Food",
                  members: ["Dishant Kumar", "Pranav Muralikrishnan"],
                ),
                Team(
                  teamName: "Logistics",
                  members: [
                    "Amogh Rao",
                    "Ananya Sharda",
                    "Disha Boorela",
                    "Marc George"
                  ],
                ),
                Team(
                  teamName: "Marketing/Social Media",
                  members: [
                    "Ananya Mehrotra",
                    "Arya Padiyar",
                    "Rachel Daniel",
                    "Sanvi Dange"
                  ],
                ),
                Team(
                  teamName: "Merchandising",
                  members: [
                    "Ayra Khetan",
                    "Somya Gupta",
                    "Surya Sivakumar"
                  ],
                ),
                Team(
                  teamName: "Photography",
                  members: [
                    "Srishti Sudarshan",
                    "Aarnav Jain",
                  ],
                ),
                Team(
                  teamName: "Public Relations",
                  members: [
                    "Neve Bangalore",
                    "Saanvi Madduri",
                    "Tisya Munjal",
                    "Vishruth Jasti"
                  ],
                ),
                Team(
                  teamName: "Registrations",
                  members: [
                    "Adyaa Mishra",
                    "Asheera Kaul",
                    "Mihir Halapeth",
                    "Nidhi Iyengar",
                    "Niyati Kumar"
                  ],
                ),
                Team(
                  teamName: "Security",
                  members: [
                    "Anirudh Chaturvedula",
                    "Ishan Wanchoo",
                    "Venkat Yendluri"
                  ],
                ),
                Team(
                  teamName: "Sponsorship",
                  members: [
                    "Allen Goveas",
                    "Aryan Akarsh",
                    "Dhyan Balasubramaniam",
                    "Harshit Jain"
                  ],
                ),
                Team(
                  teamName: "Sports",
                  members: [
                    "Fahim Bawahir",
                    "Pavan Nandhakumar",
                    "Shashank Balaji",
                    "Varun Bhardwaj"
                  ],
                ),
                Team(
                  teamName: "Technology",
                  members: [
                    "Arushi Goel",
                    "Prajwal Reddy",
                    "Sankalp Krishnamurthy",
                    "Srivishnu Vusirikala"
                  ],
                ),
                Team(
                  teamName: "Venue Management",
                  members: [
                    "Dhruv Mittal",
                    "Kriti Farswal",
                    "Nitesh Kothari"
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
    }
  }
}
