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
    iFrame.src = widget.link;
    iFrame.style.border = "none";
    // ignore: undefined_prefixed_name
    ui.platformViewRegistry
        .registerViewFactory("iFrame", (int viewId) => iFrame);
    iFrameContainer = HtmlElementView(viewType: "iFrame");
    return iFrameContainer;
  }
}
