import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
