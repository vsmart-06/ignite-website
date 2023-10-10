import 'package:flutter/material.dart';
import "package:ignite_2023/dyed_in_crimson_widgets/navigation_bar.dart";
import "package:ignite_2023/dyed_in_crimson_widgets/iframe.dart";
import "package:ignite_2023/widgets/footer.dart";
import "package:pointer_interceptor/pointer_interceptor.dart";

class DICHome extends StatelessWidget {
  const DICHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: getTopBar(context),
        drawer: PointerInterceptor(child: getDrawer(context)),
        backgroundColor: Colors.black,
        body: Column(
          children: [
            Expanded(
                child: Padding(
              padding: const EdgeInsets.all(50.0),
              child: IFrame(link: "https://www.youtube.com/embed/dQw4w9WgXcQ"),
            )),
            footer(MediaQuery.of(context).orientation == Orientation.landscape)
          ],
        ));
  }
}
