import 'package:flutter/material.dart';
import "package:ignite_2023/dyed_in_crimson_widgets/navigation_bar.dart";
import "package:ignite_2023/dyed_in_crimson_widgets/iframe.dart";
import "package:ignite_2023/dyed_in_crimson_widgets/footer.dart";
import "package:ignite_2023/widgets/item_card.dart";
import "package:pointer_interceptor/pointer_interceptor.dart";
import "package:google_fonts/google_fonts.dart";

class DICHome extends StatelessWidget {
  const DICHome({super.key});

  @override
  Widget build(BuildContext context) {
    ScrollController scroller = ScrollController();
    String? fontMain = GoogleFonts.ebGaramond().fontFamily;

    double width = MediaQuery.of(context).size.width * 0.9;

    return Scaffold(
        appBar: getTopBar(context),
        drawer: PointerInterceptor(child: getDrawer(context)),
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
                  padding: const EdgeInsets.all(10),
                  child: Text("Dyed in Crimson",
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: fontMain,
                          fontSize: 50)),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(50, 20, 50, 20),
                  child:
                      IFrame(link: "https://www.youtube.com/embed/dQw4w9WgXcQ"),
                ),
                Padding(
                    padding: EdgeInsets.fromLTRB(100, 20, 100, 20),
                    child:
                        Divider(color: Colors.white, height: 1, thickness: 1)),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Text("Rules",
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: fontMain,
                          fontSize: 45)),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(50, 10, 50, 20),
                  child: Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean ut nibh ullamcorper, tempor orci nec, venenatis ex. Mauris vel dolor at urna aliquam condimentum. Vestibulum pulvinar magna nunc, et consequat tortor tristique a. Quisque vitae fringilla dui, eu sodales felis. Nunc lorem felis, pharetra non ornare et, sodales nec arcu. Vestibulum fermentum lorem ut cursus venenatis. Donec convallis elementum neque, sed commodo urna semper sit amet. Integer non felis quis magna porttitor aliquam vel nec dolor. Etiam ac risus sed purus sodales lacinia ut efficitur enim. Sed imperdiet elit sit amet dolor tincidunt ultricies. Cras condimentum eu dolor auctor euismod. Quisque sit amet ante diam. Nulla arcu mi, commodo sit amet varius id, tristique vulputate massa.\n\nNulla facilisi. Aliquam erat volutpat. Sed quis turpis sit amet mi finibus luctus sit amet rutrum purus. In eu orci ut dolor tincidunt mollis. Phasellus eu sapien sed augue cursus auctor a eget dolor. Pellentesque id quam tincidunt risus vehicula molestie quis sit amet risus. Praesent a rhoncus arcu. Curabitur non venenatis sem. Maecenas quis imperdiet ipsum. Nulla et erat sed purus rhoncus pretium.",
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: fontMain,
                        fontSize: 25),
                    textAlign: TextAlign.justify,
                  ),
                ),
                Padding(
                    padding: EdgeInsets.fromLTRB(100, 20, 100, 20),
                    child:
                        Divider(color: Colors.white, height: 1, thickness: 1)),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Text("FAQs",
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: fontMain,
                          fontSize: 45)),
                ),
                ItemCard(name: "What is Dyed in Crimson?", description: "Hello", width: width, height: 150, color: Color(0xFF8b0000),),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: ItemCard(name: "How do I take part in Dyed in Crimson?", description: "Hello", width: width, height: 150, color: Color(0xFF8b0000)),
                ),
                ItemCard(name: "What is the prize money for winning Dyed in Crimson?", description: "Hello", width: width, height: 150, color: Color(0xFF8b0000)),
                footer(MediaQuery.of(context).orientation == Orientation.landscape)
              ],
            ),
          ),
        ));
  }
}
