import 'package:flutter/material.dart';
import "package:ignite_2023/dyed_in_crimson_widgets/hourly_clue.dart";
import "package:ignite_2023/dyed_in_crimson_widgets/navigation_bar.dart";
import "package:ignite_2023/dyed_in_crimson_widgets/footer.dart";
import "package:google_fonts/google_fonts.dart";

class DICUpdates extends StatelessWidget {
  const DICUpdates({super.key});

  @override
  Widget build(BuildContext context) {
    String? fontMain = GoogleFonts.ebGaramond().fontFamily;
    ScrollController scroller = ScrollController();

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
                Text(
                  "Updates",
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: fontMain,
                    fontSize: 50
                  )
                ),
                HourlyCard(name: "Threat Letter To William", link: "https://drive.google.com/file/d/1ZZI_Pv5YpgJ-9-zVPzp8Pp6Lx7laqTj4/view?usp=sharing", isOpen: true, openTime: DateTime(2023, 11, 3, 9, 30),),
                HourlyCard(name: "Protected Text Conversations", link: "https://drive.google.com/drive/folders/1lnQ2JButt0DZf8irbDY_YK0TrhyGK6V0?usp=drive_link", isOpen: true, openTime: DateTime(2023, 11, 3, 10, 30),),
                HourlyCard(name: "Blood Vial Case Report", link: "https://drive.google.com/file/d/12XJZ55JOV1GEJqx8eukaHdrn69oWYDGo/view?usp=drive_link", isOpen: false, openTime: DateTime(2023, 11, 3, 12, 0),),
                HourlyCard(name: "The Sorrow of The Families", link: "https://www.youtube.com/watch?v=r9ijT2uq57w", isOpen: false, openTime: DateTime(2023, 11, 3, 13, 30),),
                HourlyCard(name: "Interview Question", link: "https://docs.google.com/forms/d/e/1FAIpQLSf9D2rPtFXkPixWq8hkxHucla9pKs7cL2lUUDHtd-muBEuM_g/viewform?usp=sharing", isOpen: false, openTime: DateTime(2023, 11, 3, 14, 45),),
                HourlyCard(name: "Ophelia's Call Before Her Death", link: "https://drive.google.com/file/d/1hnRArYWWnrKx9Bans1g5v-7xneGhLMuG/view?usp=sharing", isOpen: false, openTime: DateTime(2023, 11, 3, 15, 30),),
                HourlyCard(name: "Blueprints In Ophelia's hand", link: "https://drive.google.com/file/d/1h31SM0Fir-dMsW4LeeYaujzMvkUjVZ6Q/view?usp=drive_link", isOpen: false, openTime: DateTime(2023, 11, 4, 10, 30),),
                HourlyCard(name: "Blueprints Case File", link: "https://drive.google.com/file/d/1or0BoWR2uOwGF4QST35o5dRQ_aJcBgmr/view?usp=sharing", isOpen: false, openTime: DateTime(2023, 11, 4, 10, 30),),
                HourlyCard(name: "Elise and Evelyn's Outing", link: "https://www.youtube.com/watch?v=ydRP-VdWf6I", isOpen: false, openTime: DateTime(2023, 11, 4, 12, 0),),
                footer(MediaQuery.of(context).orientation == Orientation.landscape),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
