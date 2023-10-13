import 'package:flutter/material.dart';
import "package:ignite_2023/dyed_in_crimson_widgets/navigation_bar.dart";
import "package:ignite_2023/dyed_in_crimson_widgets/iframe.dart";
import "package:ignite_2023/widgets/footer.dart";
import "package:pointer_interceptor/pointer_interceptor.dart";

class DICHome extends StatelessWidget {
  const DICHome({super.key});

  @override
  Widget build(BuildContext context) {
    ScrollController scroller = ScrollController();

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
                  padding: const EdgeInsets.all(50.0),
                  child:
                      IFrame(link: "https://www.youtube.com/embed/dQw4w9WgXcQ"),
                ),
                footer(
                    MediaQuery.of(context).orientation == Orientation.landscape)
              ],
            ),
          ),
        ));
  }
}
