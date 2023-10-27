import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ignite_2023/widgets/navigation_bar.dart';
import 'package:ignite_2023/widgets/item_card.dart';
import "package:ignite_2023/widgets/footer.dart";

class Faqs extends StatefulWidget {
  const Faqs({super.key});

  @override
  State<Faqs> createState() => _FaqsState();
}

class _FaqsState extends State<Faqs> {
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
          child: Column(
            children: [
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
    );
  }
}
