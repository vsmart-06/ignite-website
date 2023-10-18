import 'package:flutter/material.dart';
import "package:ignite_2023/dyed_in_crimson_widgets/navigation_bar.dart";
import "package:ignite_2023/dyed_in_crimson_widgets/iframe.dart";
import "package:ignite_2023/dyed_in_crimson_widgets/footer.dart";
import "package:pointer_interceptor/pointer_interceptor.dart";

class DICSubmissions extends StatelessWidget {
  const DICSubmissions({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getTopBar(context),
      drawer: PointerInterceptor(child: getDrawer(context)),
      backgroundColor: Colors.black,
      body: IFrame(link: "https://www.youtube.com/embed/dQw4w9WgXcQ", height: MediaQuery.of(context).size.height),
    );
  }
}
