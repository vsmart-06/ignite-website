// ignore_for_file: must_be_immutable

import "dart:html";
import "dart:ui_web";

import "package:flutter/material.dart";

class IFrame extends StatefulWidget {
  String link;
  double height;
  IFrame({super.key, required this.link, required this.height});

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
    iFrame.height = "${widget.height}";
    platformViewRegistry
        .registerViewFactory(widget.link, (int viewId) => iFrame);
    iFrameContainer = HtmlElementView(viewType: widget.link);
    return Container(height: widget.height, child: iFrameContainer);
  }
}
