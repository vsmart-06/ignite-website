import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ignite_2023/dyed_in_crimson_widgets/navigation_bar.dart';
import 'package:ignite_2023/widgets/item_card.dart';
import "package:ignite_2023/dyed_in_crimson_widgets/footer.dart";

class DICCharacters extends StatefulWidget {
  const DICCharacters({super.key});

  @override
  State<DICCharacters> createState() => _DICCharactersState();
}

class _DICCharactersState extends State<DICCharacters> {
  String? fontMain = GoogleFonts.ebGaramond().fontFamily;
  ScrollController scroller = ScrollController();

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    if (MediaQuery.of(context).orientation == Orientation.landscape) {
      return Scaffold(
        appBar: getTopBar(context),
        drawer: getTopBar(context),
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
                  padding: const EdgeInsets.all(20.0),
                  child: Text(
                    "Characters",
                    style: TextStyle(
                        fontSize: 50, color: Colors.white, fontFamily: fontMain),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: ItemCard(
                            image: "https://i.imgur.com/Bvm0NHU.png",
                            name: "Alexander\nYurei",
                            description: "The almost past head of the Yurei family who does not want to see the families reunited. He hates the Ashford family because of history. His son is slowly trying to usurp his power and wants to take a passive stance, going so far as to marry the heir of the Ashford family. He decides he will not stand for this disgrace, and wants to destroy both the families.",
                            width: width * 0.22,
                            height: 500,
                            color: Color(0xFF8b0000)),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: ItemCard(
                            image: "https://i.imgur.com/Bvm0NHU.png",
                            name: "Ophelia\nAshford",
                            description: "The head of the Ashford family. Thinks William isn't deserving of her daughter, and has a reputation for being cold and ruthless. Above all, she just wants her daughter to be happy, and as long as her daughter is fine, she's fine. Dies at the start of the second day.",
                            width: width * 0.22,
                            height: 500,
                            color: Color(0xFF8b0000)),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: ItemCard(
                            image: "https://i.imgur.com/Bvm0NHU.png",
                            name: "William\nYurei",
                            description: "The heir to the Yurei family, and someone who is trying to usurp his father's power. Getting married to Evelyn Ashford. Is the first death. One of the main reasons Alexander wants to kill off both families.",
                            width: width * 0.22,
                            height: 500,
                            color: Color(0xFF8b0000)),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: ItemCard(
                            image: "https://i.imgur.com/Bvm0NHU.png",
                            name: "Evelyn\nAshford",
                            description: "The heir of the Ashford family, and who William is getting married to.",
                            width: width * 0.22,
                            height: 500,
                            color: Color(0xFF8b0000)),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: ItemCard(
                            image: "https://i.imgur.com/Bvm0NHU.png",
                            name: "Viola\nYurei",
                            description: "William Yurei's sister and one of two leaders of the shadow group.",
                            width: width * 0.22,
                            height: 500,
                            color: Color(0xFF8b0000)),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: ItemCard(
                            image: "https://i.imgur.com/Bvm0NHU.png",
                            name: "Sebastian\nAshford",
                            description: "Evelyn Ashford's brother, and the other leader of the shadow group.",
                            width: width * 0.22,
                            height: 500,
                            color: Color(0xFF8b0000)),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: ItemCard(
                            image: "https://i.imgur.com/Bvm0NHU.png",
                            name: "Nikolai\nPetrov",
                            description: "Russian oligarch who was invited to the wedding. CEO of Petrov Corp, the company that made the poison that will be sent by the blood test. Invited by Alexander to discuss business proceedings. Will be framed to look like a suspect (possible motives: money, backstabbing, wronged by William in the past).",
                            width: width * 0.22,
                            height: 500,
                            color: Color(0xFF8b0000)),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: ItemCard(
                            image: "https://i.imgur.com/Bvm0NHU.png",
                            name: "Elise\nBienne",
                            description: "William's vindictive ex-girlfriend who is present at the party. Her main motive is to get revenge on William.",
                            width: width * 0.22,
                            height: 500,
                            color: Color(0xFF8b0000)),
                      ),
                    ],
                  ),
                ),
                footer(MediaQuery.of(context).orientation == Orientation.landscape)
              ],
            ),
          ),
        ),
      );
    } else {
      return Scaffold(
        appBar: getTopBar(context),
        drawer: getTopBar(context),
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
                  padding: const EdgeInsets.all(20.0),
                  child: Text(
                    "Characters",
                    style: TextStyle(
                        fontSize: 50, color: Colors.white, fontFamily: fontMain),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: ItemCard(
                      image: "https://i.imgur.com/Bvm0NHU.png",
                      name: "Alexander\nYurei",
                      description: "The almost past head of the Yurei family who does not want to see the families reunited. He hates the Ashford family because of history. His son is slowly trying to usurp his power and wants to take a passive stance, going so far as to marry the heir of the Ashford family. He decides he will not stand for this disgrace, and wants to destroy both the families.",
                      width: width * 0.9,
                      height: 500,
                      color: Color(0xFF8b0000)),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: ItemCard(
                      image: "https://i.imgur.com/Bvm0NHU.png",
                      name: "Ophelia\nAshford",
                      description: "The head of the Ashford family. Thinks William isn't deserving of her daughter, and has a reputation for being cold and ruthless. Above all, she just wants her daughter to be happy, and as long as her daughter is fine, she's fine. Dies at the start of the second day.",
                      width: width * 0.9,
                      height: 500,
                      color: Color(0xFF8b0000)),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: ItemCard(
                      image: "https://i.imgur.com/Bvm0NHU.png",
                      name: "William\nYurei",
                      description: "The heir to the Yurei family, and someone who is trying to usurp his father's power. Getting married to Evelyn Ashford. Is the first death. One of the main reasons Alexander wants to kill off both families.",
                      width: width * 0.9,
                      height: 500,
                      color: Color(0xFF8b0000)),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: ItemCard(
                      image: "https://i.imgur.com/Bvm0NHU.png",
                      name: "Evelyn\nAshford",
                      description: "The heir of the Ashford family, and who William is getting married to.",
                      width: width * 0.9,
                      height: 500,
                      color: Color(0xFF8b0000)),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: ItemCard(
                      image: "https://i.imgur.com/Bvm0NHU.png",
                      name: "Viola\nYurei",
                      description: "William Yurei's sister and one of two leaders of the shadow group.",
                      width: width * 0.9,
                      height: 500,
                      color: Color(0xFF8b0000)),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: ItemCard(
                      image: "https://i.imgur.com/Bvm0NHU.png",
                      name: "Sebastian\nAshford",
                      description: "Evelyn Ashford's brother, and the other leader of the shadow group.",
                      width: width * 0.9,
                      height: 500,
                      color: Color(0xFF8b0000)),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: ItemCard(
                      image: "https://i.imgur.com/Bvm0NHU.png",
                      name: "Nikolai\nPetrov",
                      description: "Russian oligarch who was invited to the wedding. CEO of Petrov Corp, the company that made the poison that will be sent by the blood test. Invited by Alexander to discuss business proceedings. Will be framed to look like a suspect (possible motives: money, backstabbing, wronged by William in the past).",
                      width: width * 0.9,
                      height: 500,
                      color: Color(0xFF8b0000)),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: ItemCard(
                      image: "https://i.imgur.com/Bvm0NHU.png",
                      name: "Elise\nBienne",
                      description: "William's vindictive ex-girlfriend who is present at the party. Her main motive is to get revenge on William.",
                      width: width * 0.9,
                      height: 500,
                      color: Color(0xFF8b0000)),
                ),
                footer(MediaQuery.of(context).orientation == Orientation.landscape)
              ],
            ),
          ),
        ),
      );
    }
  }
}
