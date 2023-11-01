import 'package:flutter/material.dart';
import "package:ignite_2023/dyed_in_crimson_widgets/navigation_bar.dart";
import "package:ignite_2023/dyed_in_crimson_widgets/iframe.dart";
import "package:pointer_interceptor/pointer_interceptor.dart";

class DICPuzzle extends StatelessWidget {
  const DICPuzzle({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getTopBar(context),
      drawer: PointerInterceptor(child: getDrawer(context)),
      backgroundColor: Colors.black,
      body: Center(child: IFrame(link: "https://ruwix.com/online-puzzle-simulators/sliding-15-puzzle?scale=1&rept=1&scram=1&nums=1&pic=https%3A%2F%2Fi.postimg.cc%2FFHwXxRYp%2FOphelia-Threat-Letter.png", height: 300, width: 300)),
    );
  }
}
