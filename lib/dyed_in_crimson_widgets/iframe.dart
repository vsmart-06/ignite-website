// ignore_for_file: must_be_immutable

import "dart:html";
import "dart:ui_web";

import "package:flutter/material.dart";

class IFrame extends StatefulWidget {
  String link;
  double height;
  double? width;
  IFrame({super.key, required this.link, required this.height, this.width});

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
    iFrame.style.height = "100%";
    iFrame.style.width = "100%";
    iFrame.height = "${widget.height}";
    if (widget.width != null) {
      iFrame.width = "${widget.width!}";
    }
    platformViewRegistry.registerViewFactory(widget.link, (int viewId) => iFrame);
    iFrameContainer = HtmlElementView(viewType: widget.link);
    if (widget.width == null) {
      return Container(height: widget.height, child: iFrameContainer);
    }
    else {
      return Container(width: widget.width!, height: widget.height, child: iFrameContainer);
    }
  }
}
