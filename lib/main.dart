import "package:flutter/material.dart";
import "package:ignite_2023/pages/home_page.dart";

void main() {
  runApp(
    MaterialApp(
      title: "Ignite 2023",
      routes: {
        "/": (context) => Home()
      }
    )
  );
}
