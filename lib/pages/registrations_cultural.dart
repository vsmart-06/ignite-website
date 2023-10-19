import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";
import 'package:ignite_2023/widgets/events_button.dart';
import "package:ignite_2023/widgets/footer.dart";
import "package:ignite_2023/widgets/navigation_bar.dart";
import "package:ignite_2023/widgets/item_card.dart";

class RegistrationsCultural extends StatefulWidget {
  @override
  State<RegistrationsCultural> createState() => _RegistrationsCulturalState();
}

class _RegistrationsCulturalState extends State<RegistrationsCultural> {
  String? font = GoogleFonts.roboto().fontFamily;

  List<Color> cardColors = [
    Colors.black,
    Colors.black,
    Colors.black,
    Colors.black,
    Colors.black,
    Colors.black,
    Colors.black,
    Colors.black,
  ];
  ScrollController scroll = ScrollController();

  // TODO: When registrations open, change the isOpen variable to true
  bool isOpen = true;

  @override
  Widget build(BuildContext context) {
    String? fontMain = GoogleFonts.ebGaramond().fontFamily;
    double faqWidth = MediaQuery.of(context).size.width * 0.9;

    if (!isOpen) {
      return Scaffold(
          appBar: getTopBar(context),
          drawer: getDrawer(context),
          backgroundColor: Colors.black,
          body: RawScrollbar(
            thumbColor: Color(0xFF313133),
            thickness: 10,
            thumbVisibility: true,
            trackVisibility: true,
            controller: scroll,
            child: SingleChildScrollView(
              controller: scroll,
              child: Column(
                children: [
                  Center(
                    child: Padding(
                      padding: MediaQuery.of(context).orientation ==
                              Orientation.landscape
                          ? EdgeInsets.all(150.0)
                          : EdgeInsets.all(30.0),
                      child: Text(
                        "Registrations for the cultural events will open on the 18th of October, 2023 (Wednesday).",
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: fontMain,
                            fontSize: 50),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  footer(
                      MediaQuery.of(context).orientation == Orientation.landscape)
                ],
              ),
            ),
          ));
    }

    if (MediaQuery.of(context).orientation == Orientation.portrait) {
      return Scaffold(
        appBar: getTopBar(context),
        drawer: getDrawer(context),
        backgroundColor: Colors.black,
        body: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  "Cultural Registrations",
                  style: TextStyle(
                      color: Colors.white, fontSize: 50, fontFamily: fontMain),
                  textAlign: TextAlign.center
                ),
              ),
              Expanded(
                child: RawScrollbar(
                  thumbColor: Color(0xFF313133),
                  thickness: 10,
                  thumbVisibility: true,
                  trackVisibility: true,
                  controller: scroll,
                  child: SingleChildScrollView(
                    controller: scroll,
                    child: Column(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * 0.7,
                          child: Card(
                            color: Colors.transparent,
                            shape: RoundedRectangleBorder(
                                side: BorderSide(color: Colors.white),
                                borderRadius: BorderRadius.circular(10)),
                            child: Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Text(
                                "Note: Each school can send a maximum of 2 teams. If more than 2 teams register, the first 2 teams that submit the form will be taken into account.\n\nHave any more questions? Check out our FAQs below!",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 30,
                                    fontFamily: fontMain),
                              ),
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            EventsButton(
                                inSite: false,
                                imagePath: 'https://i.imgur.com/yx3dJZQ.png',
                                websitePath:
                                    "https://forms.gle/ZmcpibSNVLHwc2e4A",
                                name: "Battle of\nthe Bands"),
                            EventsButton(
                                inSite: false,
                                imagePath: 'https://i.imgur.com/Fcv7aQv.png',
                                websitePath:
                                    "https://forms.gle/Sgt5S4VnRRKzrSDg7",
                                name: "Pitch\nPerfect"),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            EventsButton(
                                inSite: false,
                                imagePath: 'https://i.imgur.com/6luARcL.png',
                                websitePath:
                                    "https://forms.gle/cXbx7dmTT4cLx5Gn7",
                                name: "Razzmatazz"),
                            EventsButton(
                                inSite: false,
                                imagePath: 'https://i.imgur.com/xsVCfTa.png',
                                websitePath:
                                    "https://forms.gle/5nUazpftANVZeChi9",
                                name: "Silver\nScreen"),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            EventsButton(
                                inSite: false,
                                imagePath: 'https://i.imgur.com/qFuYhLe.png',
                                websitePath:
                                    "https://forms.gle/Q3p6LDW4Uj2uyMP4A",
                                name: "Thespian of\nMelody"),
                            EventsButton(
                                inSite: false,
                                imagePath: 'https://i.imgur.com/bhiMoTF.png',
                                websitePath:
                                    "https://forms.gle/5KdTukPT5AyyfdvH9",
                                name: "Icons and\nImitations"),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            EventsButton(
                                inSite: false,
                                imagePath: 'https://i.imgur.com/I5yddnf.png',
                                websitePath:
                                    "https://forms.gle/2vwaJKy8msAKtEko9",
                                name: "Metamorphosis"),
                            EventsButton(
                                inSite: false,
                                imagePath: 'https://i.imgur.com/t3nTznY.png',
                                websitePath:
                                    "https://forms.gle/499xw83SSco6XPQh6",
                                name: "Kryptos\nVisos"),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            EventsButton(
                                inSite: false,
                                imagePath: 'https://i.imgur.com/ozRDzqn.png',
                                websitePath:
                                    "https://forms.gle/nFdyqZh8exG7989v5",
                                name: "Dealer's\nChoice"),
                            EventsButton(
                                inSite: false,
                                imagePath: 'https://i.imgur.com/nMTu7YX.png',
                                websitePath:
                                    "https://forms.gle/XzAzZfLcdUizpCRq6",
                                name: "Shoot your\nShot"),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            EventsButton(
                                inSite: true,
                                imagePath: 'https://i.imgur.com/eUWfCyk.png',
                                websitePath: "/registrations/respawn",
                                name: "Respawn"),
                            EventsButton(
                                inSite: false,
                                imagePath: 'https://i.imgur.com/7Us373q.png',
                                websitePath:
                                    "https://forms.gle/jehQpmcucD9XvJRPA",
                                name: "Throwback\nTrifecta"),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(100, 50, 100, 50),
                          child: Divider(color: Colors.white, height: 1, thickness: 1)),
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Text("FAQs",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: fontMain,
                                  fontSize: 45)),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                          child: ItemCard(
                            name: "How do I register?",
                            backside: "CONTACT YOUR SCHOOL and let them know you are interested in participating in IGNITE. Ensure you get permission to participate and note that only 2 teams per school per event are allowed except for Rocket league. Request for the contact details for the supervisor that will accompany you to the event and ensure you fill in the details accurately.",
                            width: faqWidth,
                            height: 550,
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
                            height: 500,
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
                            height: 500,
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
                            height: 650,
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
                            height: 550,
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
                            height: 500,
                            color: Colors.orange,
                            back: false,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    } else {
      return Scaffold(
        appBar: getTopBar(context),
        drawer: getDrawer(context),
        backgroundColor: Colors.black,
        body: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  "Cultural Registrations",
                  style: TextStyle(
                      color: Colors.white, fontSize: 50, fontFamily: fontMain),
                  textAlign: TextAlign.center
                ),
              ),
              Expanded(
                child: RawScrollbar(
                  thumbColor: Color(0xFF313133),
                  thickness: 10,
                  thumbVisibility: true,
                  trackVisibility: true,
                  controller: scroll,
                  child: SingleChildScrollView(
                    controller: scroll,
                    child: Column(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * 0.7,
                          child: Card(
                            color: Colors.transparent,
                            shape: RoundedRectangleBorder(
                                side: BorderSide(color: Colors.white),
                                borderRadius: BorderRadius.circular(10)),
                            child: Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Text(
                                "Note: Each school can send a maximum of 2 teams. If more than 2 teams register, the first 2 teams that submit the form will be taken into account.\n\nHave any more questions? Check out our FAQs below!",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 30,
                                    fontFamily: fontMain),
                              ),
                            ),
                          ),
                        ),
                        SingleChildScrollView(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              EventsButton(
                                  inSite: false,
                                  imagePath: 'https://i.imgur.com/yx3dJZQ.png',
                                  websitePath:
                                      "https://forms.gle/ZmcpibSNVLHwc2e4A",
                                  name: "Battle of\nthe Bands"),
                              EventsButton(
                                  inSite: false,
                                  imagePath: 'https://i.imgur.com/Fcv7aQv.png',
                                  websitePath:
                                      "https://forms.gle/Sgt5S4VnRRKzrSDg7",
                                  name: "Pitch\nPerfect"),
                              EventsButton(
                                  inSite: false,
                                  imagePath: 'https://i.imgur.com/6luARcL.png',
                                  websitePath:
                                      "https://forms.gle/cXbx7dmTT4cLx5Gn7",
                                  name: "Razzmatazz"),
                              EventsButton(
                                  inSite: false,
                                  imagePath: 'https://i.imgur.com/xsVCfTa.png',
                                  websitePath:
                                      "https://forms.gle/5nUazpftANVZeChi9",
                                  name: "Silver\nScreen"),
                              EventsButton(
                                  inSite: false,
                                  imagePath: 'https://i.imgur.com/qFuYhLe.png',
                                  websitePath:
                                      "https://forms.gle/Q3p6LDW4Uj2uyMP4A",
                                  name: "Thespian\nof Melody"),
                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            EventsButton(
                                inSite: false,
                                imagePath: 'https://i.imgur.com/bhiMoTF.png',
                                websitePath:
                                    "https://forms.gle/5KdTukPT5AyyfdvH9",
                                name: "Icons and\nImitations"),
                            EventsButton(
                                inSite: false,
                                imagePath: 'https://i.imgur.com/I5yddnf.png',
                                websitePath:
                                    "https://forms.gle/2vwaJKy8msAKtEko9",
                                name: "Metamorphosis"),
                            EventsButton(
                                inSite: false,
                                imagePath: 'https://i.imgur.com/t3nTznY.png',
                                websitePath:
                                    "https://forms.gle/499xw83SSco6XPQh6",
                                name: "Kryptos\nVisos"),
                            EventsButton(
                                inSite: false,
                                imagePath: 'https://i.imgur.com/ozRDzqn.png',
                                websitePath:
                                    "https://forms.gle/nFdyqZh8exG7989v5",
                                name: "Dealer's\nChoice"),
                            EventsButton(
                                inSite: false,
                                imagePath: 'https://i.imgur.com/nMTu7YX.png',
                                websitePath:
                                    "https://forms.gle/XzAzZfLcdUizpCRq6",
                                name: "Shoot your\nShot"),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            EventsButton(
                                inSite: true,
                                imagePath: 'https://i.imgur.com/eUWfCyk.png',
                                websitePath: "/registrations/respawn",
                                name: "Respawn"),
                            EventsButton(
                                inSite: false,
                                imagePath: 'https://i.imgur.com/7Us373q.png',
                                websitePath:
                                    "https://forms.gle/jehQpmcucD9XvJRPA",
                                name: "Throwback\nTrifecta"),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(100, 50, 100, 50),
                          child: Divider(color: Colors.white, height: 1, thickness: 1)),
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Text("FAQs",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: fontMain,
                                  fontSize: 45)),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                          child: ItemCard(
                            name: "How do I register?",
                            backside: "CONTACT YOUR SCHOOL and let them know you are interested in participating in IGNITE. Ensure you get permission to participate and note that only 2 teams per school per event are allowed except for Rocket league. Request for the contact details for the supervisor that will accompany you to the event and ensure you fill in the details accurately.",
                            width: faqWidth,
                            height: 300,
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
                            height: 300,
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
                            height: 300,
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
                            height: 300,
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
                            height: 300,
                            color: Colors.orange,
                            back: false,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                          child: ItemCard(
                            name: "What do I need to do if my event requires any submissions?",
                            backside: "Wait for the confirmation email for further details and instructions. You will receive this email in within a week of your registration and payment. Contact us if you do not receive this email and we will help you out.",
                            width: faqWidth,
                            height: 300,
                            color: Colors.orange,
                            back: false,
                          ),
                        ),
                        Padding(padding: EdgeInsets.only(top: 20)),
                        footer(MediaQuery.of(context).orientation ==
                            Orientation.landscape)
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    }
  }
}
