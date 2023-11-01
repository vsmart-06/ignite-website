// ignore_for_file: must_be_immutable

import "dart:html";
import "dart:ui_web";

import "package:flutter/material.dart";

class IFrame extends StatefulWidget {
  String link;
  double height;
  double? width;
  bool? scrollable;
  IFrame({super.key, required this.link, required this.height, this.width, this.scrollable});

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
    if (widget.scrollable != null) {
      if (!widget.scrollable!) {
        iFrame.style.overflow = "hidden";
      }
    }
    iFrame.allowFullscreen = true;
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
