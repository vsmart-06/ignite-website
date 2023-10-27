import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ignite_2023/widgets/item_card.dart';
import 'package:ignite_2023/widgets/navigation_bar.dart';
import "package:ignite_2023/widgets/footer.dart";

class Rules extends StatefulWidget {
  const Rules({super.key});

  @override
  State<Rules> createState() => _RulesState();
}

class _RulesState extends State<Rules> {
  String? fontMain = GoogleFonts.ebGaramond().fontFamily;
  ScrollController scroller = ScrollController();

  @override
  Widget build(BuildContext context) {
    double faqWidth = MediaQuery.of(context).size.width * 0.9;
    double faqHeight = MediaQuery.of(context).orientation == Orientation.landscape ? 300 : 650;

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
                    "IGNITE's Rules",
                    style: TextStyle(
                        fontSize: 50,
                        color: Colors.white,
                        fontFamily: fontMain),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.75,
                  child: Text(
                    '''Guidelines for participants:
          
→ Attendees will be given a wrist band of different colors for easy identification. Attendees must wear the bands throughout the event. Anyone found without the band will be asked to leave the campus.

→ Participants in cultural events must come in their formal school uniform and must carry photo ID cards of the current academic year. No student will be allowed in the school campus without their ID card. Participants in the 'Icons & Imitations' event must also come in their formal uniforms and change before their event. 

→ Participants for all sports events must wear their PE uniforms/jerseys and must carry photo ID cards of the current academic year. All sports gear (as needed) must be brought by the participants during registration. No participant will be allowed to leave the venue until their event is over.

→ ALL walk-in attendees must wear their school uniform. Any attendees not wearing their school uniform will be sent back. 

→ Attendees must not loiter around in the venue and should stick to their allocated spaces. 

→ Participants are not allowed to bring food, water, or any other drinks on campus. Empty water bottles may be brought which can be filled at water stations throughout the venue. Any lunch boxes brought will be confiscated

→ Attendees are encouraged to bring money to purchase items from a selection of food trucks and stalls that will be available on campus during the event. 

→ Attendees who need to bring their medicines must do so after sending a valid doctor's note containing the name of the medicine to the following mail: ignite@greenwoodhigh.edu.in by October 31st at the latest

→ Attendees/Participants must not bring any perfume. Deodorant is allowed only under the exception that it is a sealed can.

→ The school is not liable for damage to or loss of the participant's belongings during the event.

→ Attendees are required to ensure that they are careful with any school property that they use. The Organising Committee will note any damages to school property and attendees will be held liable for the costs.

→ IGNITE follows a strict zero-tolerance policy for drugs, narcotics, and alcohol of any kind. Any participant found violating this policy will be immediately removed from campus, and their school will be notified and will be blacklisted for the remainder of the fest and future installments of IGNITE. 

→ Attendees are expected to comply with all instructions provided by the Organising Committee and security volunteers at various points throughout the event. Direct infringement of such rules will result in disciplinary action. 

→ Any violation of these rules will lead to immediate elimination from events.

→ The IGNITE Organising Committee reserves the right to expel a participant from further participation in an event should the Organising Committee or any faculty, at their sole discretion, deem the participant's behavior inappropriate or offensive to other participants or staff. No refund of the registration fee will be given to a participant who has been expelled from the event.
                ''',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontFamily: fontMain),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(100, 50, 100, 50),
                  child: Divider(color: Colors.white, height: 1, thickness: 1)),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Text("FAQs",
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: fontMain,
                          fontSize: 50)),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                  child: ItemCard(
                    name: "How do I register?",
                    backside: "CONTACT YOUR SCHOOL and let them know you are interested in participating in IGNITE. Ensure you get permission to participate and note that only 2 teams per school per event are allowed except for Rocket league. Request for the contact details for the supervisor that will accompany you to the event and ensure you fill in the details accurately.",
                    width: faqWidth,
                    height: faqHeight,
                    color: Colors.orange,
                    back: false,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                  child: ItemCard(
                    name: "What does Supervising Teacher mean?",
                    backside: "Any faculty member from your school who can accompany you to the event as decided by the school.",
                    width: faqWidth,
                    height: faqHeight,
                    color: Colors.orange,
                    back: false,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                  child: ItemCard(
                    name: "Who do I ask if I have a question?",
                    backside: "Contact ignite@greenwoodhigh.edu.in or the official IGNITE Instagram if you have questions related to registrations. We will try to answer you as soon as possible.",
                    width: faqWidth,
                    height: faqHeight,
                    color: Colors.orange,
                    back: false,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                  child: ItemCard(
                    name: "Where and how much do I pay?",
                    backside: "The payment links are embedded in the registration forms. Just follow the instructions on the forms and all amounts are already prefilled - ₹250 for individual cultural events and ₹800 for team cultural events.\n\nPlease note that battle of the bands does not have a registration form. It had an interest form with an application that needs to be filled with your audition. If your band is chosen payment details will be emailed to you.",
                    width: faqWidth,
                    height: faqHeight,
                    color: Colors.orange,
                    back: false,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                  child: ItemCard(
                    name: "Can I walk in to IGNITE?",
                    backside: "Yes, you can there is a walk in fee associated and it is integral that you come with your school ID cards to be allowed to walk in. The walk in price is ₹300 and only cash is allowed\n\nWe also offer registration to our walk in event Dyed in Crimson which is an intriguing murder mystery event. For more details check the event page.",
                    width: faqWidth,
                    height: faqHeight,
                    color: Colors.orange,
                    back: false,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 10, 10, 20),
                  child: ItemCard(
                    name: "What do I need to do if my event requires any submissions?",
                    backside: "Wait for the confirmation email for further details and instructions. You will receive this email in within a week of your registration and payment. Contact us if you do not receive this email and we will help you out.",
                    width: faqWidth,
                    height: faqHeight,
                    color: Colors.orange,
                    back: false,
                  ),
                ),
                footer(
                    MediaQuery.of(context).orientation == Orientation.landscape, context)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
