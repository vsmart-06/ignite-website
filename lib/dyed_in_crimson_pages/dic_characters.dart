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
              width: width,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text(
                      "Characters",
                      style: TextStyle(
                          fontSize: 50,
                          color: Colors.white,
                          fontFamily: fontMain),
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
                            image: "https://i.imgur.com/W2EcJsP.png",
                            name: "Alexander\nYurei",
                            backside:
                                "Patriarch of the Yurei family and father to William Yurei. He is known as an incredibly charming and kind-hearted man, but one not to cross. His benevolence, coupled with the ingenuity and iron will with which he built his family up from the ground has earned him the well deserved title of the \"Serene Sultan\".",
                            width: width * 0.22,
                            height: 500,
                            color: Color(0xFF8b0000),
                            back: false,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: ItemCard(
                            image: "https://i.imgur.com/W2EcJsP.png",
                            name: "Ophelia\nAshford",
                            backside:
                                "Head of the Ashford family, and mother to Evelyn Ashford. Cold and ruthless, even the bravest of men falter under her dominating presence. Though she had been disadvantaged from being the second-born child of the Ashfords, her air of authority and ability to command respect naturally pushed her to the top, establishing her identity as a truly dangerous individual.",
                            width: width * 0.22,
                            height: 500,
                            color: Color(0xFF8b0000),
                            back: false,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: ItemCard(
                            image: "https://i.imgur.com/W2EcJsP.png",
                            name: "William\nYurei",
                            backside:
                                "Next in line to inherit the crown of the Yurei family, and the soon to be husband of Evelyn Ashford. His charismatic and hard-working nature has quickly made him a popular figure in England's royal circles, especially amongst the ladies. Some may call his rigid sense of honour a flaw, but to many it has made him a respectable and trust-worthy individual.",
                            width: width * 0.22,
                            height: 500,
                            color: Color(0xFF8b0000),
                            back: false,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: ItemCard(
                            image: "https://i.imgur.com/W2EcJsP.png",
                            name: "Evelyn\nAshford",
                            backside:
                                "The graceful and captivating daughter of Ophelia Ashford has long been the desire of many men, yet only one has managed to win her heart. William Yurei's bride and the daughter of Ophelia Ashford, this to-be queen has become the bridge between the two distinct dynasties.",
                            width: width * 0.22,
                            height: 500,
                            color: Color(0xFF8b0000),
                            back: false,
                          ),
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
                            image: "https://i.imgur.com/W2EcJsP.png",
                            name: "Viola\nYurei",
                            backside:
                                "The younger sister of William Yurei and second-in-line to the throne of the Yurei family. Always being brought up in the shadow of her older brother has filled her with a insatiable drive to prove herself and has gifted her with an infallible work ethic. Nothing can stand between her and the power she wishes to gain.",
                            width: width * 0.22,
                            height: 500,
                            color: Color(0xFF8b0000),
                            back: false,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: ItemCard(
                            image: "https://i.imgur.com/W2EcJsP.png",
                            name: "Sebastian\nAshford",
                            backside:
                                "The older brother of Evelyn Ashford and first in line for the throne to the Ashford family. He's loyal to only two things: his never-ending hunger for power, and his dog  Charming, cunning and with amazing hair to match, this royal is as ambitious as he is handsome.",
                            width: width * 0.22,
                            height: 500,
                            color: Color(0xFF8b0000),
                            back: false,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: ItemCard(
                            image: "https://i.imgur.com/W2EcJsP.png",
                            name: "Nikolai\nPetrov",
                            backside:
                                "The multi-billionaire oligarch hailing from the land of the Slavs, his pharmaceutical empire as the CEO of Petrov Corp is built upon a long and hidden history that wise men know not to ask about. The darkest echelons of the Russian underground know him by another name - the Shadow.",
                            width: width * 0.22,
                            height: 500,
                            color: Color(0xFF8b0000),
                            back: false,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: ItemCard(
                            image: "https://i.imgur.com/W2EcJsP.png",
                            name: "Elise\nBienne",
                            backside:
                                "The ex-girlfriend of William Yurei, and the heir to the Norwegian Throne. She does not forgive easily, and is known for her love of cashmere coats and psychological warfare. Being forced to dance through cutthroat royal plots all her life has made her an expert at intrigue, with a sharp tongue and a sharper intellect to match.",
                            width: width * 0.22,
                            height: 500,
                            color: Color(0xFF8b0000),
                            back: false,
                          ),
                        ),
                      ],
                    ),
                  ),
                  footer(
                      MediaQuery.of(context).orientation == Orientation.landscape)
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
              width: width,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text(
                      "Characters",
                      style: TextStyle(
                          fontSize: 50,
                          color: Colors.white,
                          fontFamily: fontMain),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: ItemCard(
                      image: "https://i.imgur.com/W2EcJsP.png",
                      name: "Alexander\nYurei",
                      backside:
                          "Patriarch of the Yurei family and father to William Yurei. He is known as an incredibly charming and kind-hearted man, but one not to cross. His benevolence, coupled with the ingenuity and iron will with which he built his family up from the ground has earned him the well deserved title of the \"Serene Sultan\".",
                      width: width * 0.9,
                      height: 500,
                      color: Color(0xFF8b0000),
                      back: false,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: ItemCard(
                      image: "https://i.imgur.com/W2EcJsP.png",
                      name: "Ophelia\nAshford",
                      backside:
                          "Head of the Ashford family, and mother to Evelyn Ashford. Cold and ruthless, even the bravest of men falter under her dominating presence. Though she had been disadvantaged from being the second-born child of the Ashfords, her air of authority and ability to command respect naturally pushed her to the top, establishing her identity as a truly dangerous individual.",
                      width: width * 0.9,
                      height: 500,
                      color: Color(0xFF8b0000),
                      back: false,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: ItemCard(
                      image: "https://i.imgur.com/W2EcJsP.png",
                      name: "William\nYurei",
                      backside:
                          "Next in line to inherit the crown of the Yurei family, and the soon to be husband of Evelyn Ashford. His charismatic and hard-working nature has quickly made him a popular figure in England's royal circles, especially amongst the ladies. Some may call his rigid sense of honour a flaw, but to many it has made him a respectable and trust-worthy individual.",
                      width: width * 0.9,
                      height: 500,
                      color: Color(0xFF8b0000),
                      back: false,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: ItemCard(
                      image: "https://i.imgur.com/W2EcJsP.png",
                      name: "Evelyn\nAshford",
                      backside:
                          "The graceful and captivating daughter of Ophelia Ashford has long been the desire of many men, yet only one has managed to win her heart. William Yurei's bride and the daughter of Ophelia Ashford, this to-be queen has become the bridge between the two distinct dynasties.",
                      width: width * 0.9,
                      height: 500,
                      color: Color(0xFF8b0000),
                      back: false,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: ItemCard(
                      image: "https://i.imgur.com/W2EcJsP.png",
                      name: "Viola\nYurei",
                      backside:
                          "The younger sister of William Yurei and second-in-line to the throne of the Yurei family. Always being brought up in the shadow of her older brother has filled her with a insatiable drive to prove herself and has gifted her with an infallible work ethic. Nothing can stand between her and the power she wishes to gain.",
                      width: width * 0.9,
                      height: 500,
                      color: Color(0xFF8b0000),
                      back: false,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: ItemCard(
                      image: "https://i.imgur.com/W2EcJsP.png",
                      name: "Sebastian\nAshford",
                      backside:
                          "The older brother of Evelyn Ashford and first in line for the throne to the Ashford family. He's loyal to only two things: his never-ending hunger for power, and his dog  Charming, cunning and with amazing hair to match, this royal is as ambitious as he is handsome.",
                      width: width * 0.9,
                      height: 500,
                      color: Color(0xFF8b0000),
                      back: false,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: ItemCard(
                      image: "https://i.imgur.com/W2EcJsP.png",
                      name: "Nikolai\nPetrov",
                      backside:
                          "The multi-billionaire oligarch hailing from the land of the Slavs, his pharmaceutical empire as the CEO of Petrov Corp is built upon a long and hidden history that wise men know not to ask about. The darkest echelons of the Russian underground know him by another name - the Shadow.",
                      width: width * 0.9,
                      height: 500,
                      color: Color(0xFF8b0000),
                      back: false,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: ItemCard(
                      image: "https://i.imgur.com/W2EcJsP.png",
                      name: "Elise\nBienne",
                      backside:
                          "The ex-girlfriend of William Yurei, and the heir to the Norwegian Throne. She does not forgive easily, and is known for her love of cashmere coats and psychological warfare. Being forced to dance through cutthroat royal plots all her life has made her an expert at intrigue, with a sharp tongue and a sharper intellect to match.",
                      width: width * 0.9,
                      height: 500,
                      color: Color(0xFF8b0000),
                      back: false,
                    ),
                  ),
                  footer(
                      MediaQuery.of(context).orientation == Orientation.landscape)
                ],
              ),
            ),
          ),
        ),
      );
    }
  }
}
