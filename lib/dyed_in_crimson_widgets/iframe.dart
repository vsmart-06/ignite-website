// ignore_for_file: must_be_immutable

import "dart:html";
import "dart:ui" as ui;

import "package:flutter/material.dart";

class IFrame extends StatefulWidget {
  String link;
  IFrame({super.key, required this.link});

  @override
  State<IFrame> createState() => _IFrameState();
}

class _IFrameState extends State<IFrame> {
  Map? data;
  IFrameElement iFrame = IFrameElement();
  late HtmlElementView iFrameContainer;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).orientation == Orientation.landscape
        ? 0.8 * MediaQuery.of(context).size.height
        : 0.4 * MediaQuery.of(context).size.height;
    iFrame.src = widget.link;
    iFrame.style.border = "none";
    iFrame.height = "$height";
    // ignore: undefined_prefixed_name
    ui.platformViewRegistry
        .registerViewFactory("iFrame", (int viewId) => iFrame);
    iFrameContainer = HtmlElementView(viewType: "iFrame");
    return Container(height: height, child: iFrameContainer);
  }
}
