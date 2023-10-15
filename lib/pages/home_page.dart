import "package:flutter/material.dart";
import "dart:async";
import "package:google_fonts/google_fonts.dart";
import "package:ignite_2023/widgets/navigation_bar.dart";
import "package:ignite_2023/widgets/footer.dart";
import 'package:carousel_slider/carousel_slider.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Duration time = DateTime(2023, 11, 3, 8, 00).difference(DateTime.now());
  Timer? timer;
  int? days;
  int? hours;
  int? minutes;
  int? seconds;
  List<String> time_string = ["", "", "", ""];

  Color primaryColor = Colors.black;
  Color accentColor = Colors.white;
  Size buttonSize = Size(100, 100);
  String? font = GoogleFonts.ebGaramond().fontFamily;
  String? fontTime = GoogleFonts.roboto().fontFamily;
  ScrollController scroller = ScrollController();
  PageController? pageScroll = PageController(keepPage: false);
  List<Color> buttonColors = [Colors.black, Colors.black, Colors.black];
  Color textcolor = Colors.white;
  List imageCarousel = [
    "https://i.imgur.com/3wbptnT.jpg",
    "https://i.imgur.com/CKGZOx3.jpg",
    "https://i.imgur.com/7mDGjyL.jpg",
    "https://i.imgur.com/yQBSbPP.jpg",
    "https://i.imgur.com/Xv21qJX.jpg",
    "https://i.imgur.com/ldimDic.jpg",
    "https://i.imgur.com/oDmVvA2.jpg",
    "https://i.imgur.com/RF8DyDF.jpg"
  ];
  double? scheduleHeight;
  double? scheduleWidth;
  ScrollController rowController = ScrollController();

  @override
  void initState() {
    super.initState();
    timer = Timer.periodic(Duration(seconds: 1), (timer) {
      setCountdown();
    });
  }

  void setCountdown() {
    if (mounted) {
      setState(() {
        int seconds = time.inSeconds - 1;
        if (seconds < 0) {
          seconds = 0;
        }
        time = Duration(seconds: seconds);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    scheduleHeight = MediaQuery.of(context).size.height;
    scheduleWidth = MediaQuery.of(context).size.width;
    time_string = ["", "", "", ""];
    days = time.inDays;
    if (days! < 10) {
      time_string[0] = "0" + days.toString();
    } else {
      time_string[0] = days.toString();
    }
    hours = time.inHours.remainder(24);
    if (hours! < 10) {
      time_string[1] = "0" + hours.toString();
    } else {
      time_string[1] = hours.toString();
    }
    minutes = time.inMinutes.remainder(60);
    if (minutes! < 10) {
      time_string[2] = "0" + minutes.toString();
    } else {
      time_string[2] = minutes.toString();
    }
    seconds = time.inSeconds.remainder(60);
    if (seconds! < 10) {
      time_string[3] = "0" + seconds.toString();
    } else {
      time_string[3] = seconds.toString();
    }
    if (MediaQuery.of(context).orientation == Orientation.landscape) {
      return Scaffold(
          backgroundColor: Colors.black,
          appBar: getTopBar(context),
          drawer: getDrawer(context),
          body: Center(
              child: RawScrollbar(
            thumbColor: Color(0xFF313133),
            thickness: 10,
            thumbVisibility: true,
            trackVisibility: true,
            controller: scroller,
            child: SingleChildScrollView(
              controller: scroller,
              child: Column(
                children: [
                  Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(30.0),
                          child: Image.network(
                            "https://i.imgur.com/5VuyhL2.png",
                            height:
                                MediaQuery.of(context).size.height * 0.4,
                          ),
                        ),
                        Text(
                          "IGNITE 2023",
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: font,
                              fontSize: 60,
                              fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                        /*TextButton(
                        style: ButtonStyle(
                          foregroundColor:
                              MaterialStateProperty.all<Color>(textcolor),
                          backgroundColor: MaterialStatePropertyAll<Color>(
                              Colors.transparent),
                        ),
                        child: Padding(
                          padding:
                              const EdgeInsets.fromLTRB(50, 20, 50, 20),
                          child: Text(
                            "Registrations Open Now",
                            style: TextStyle(
                              color: textcolor,
                              fontFamily: font,
                              fontSize: 28,
                              fontWeight: FontWeight.bold
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        onPressed: () {
                          Navigator.popAndPushNamed(
                              context, "/registrations");
                        },
                        onHover: (value) {
                          if (value) {
                            setState(() {
                              textcolor = Colors.green;
                            });
                          } else {
                            setState(() {
                              textcolor = Colors.white;
                            });
                          }
                        },
                      ),
                      */
                        Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Text(
                            "The event starts in:",
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: font,
                                fontSize: 30),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                                    child: Text(
                                      time_string[0],
                                      style: TextStyle(
                                          color: accentColor,
                                          fontFamily: fontTime,
                                          fontSize: 40),
                                    ),
                                  ),
                                  Text("Days",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontFamily: font,
                                          fontSize: 20))
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                                    child: Text(
                                      time_string[1],
                                      style: TextStyle(
                                          color: accentColor,
                                          fontFamily: fontTime,
                                          fontSize: 40),
                                    ),
                                  ),
                                  Text("Hours",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontFamily: font,
                                          fontSize: 20))
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                                    child: Text(
                                      time_string[2],
                                      style: TextStyle(
                                          color: accentColor,
                                          fontFamily: fontTime,
                                          fontSize: 40),
                                    ),
                                  ),
                                  Text("Minutes",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontFamily: font,
                                          fontSize: 20))
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                                    child: Text(
                                      time_string[3],
                                      style: TextStyle(
                                          color: accentColor,
                                          fontFamily: fontTime,
                                          fontSize: 40),
                                    ),
                                  ),
                                  Text("Seconds",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontFamily: font,
                                          fontSize: 20))
                                ],
                              ),
                            ),
                          ],
                        ),
                      ]),
                  Padding(
                    padding: EdgeInsets.fromLTRB(100, 50, 100, 50),
                    child: Divider(color: Colors.white, height: 1, thickness: 1)),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
                    child: Column(
                      children: [
                        Padding(
                            padding: EdgeInsets.fromLTRB(0, 0, 0, 20),
                            child: Text("Photo Gallery",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: font,
                                    fontSize: 50))),
                        CarouselSlider(
                          options: CarouselOptions(
                              viewportFraction: 0.5,
                              height: 400.0,
                              enableInfiniteScroll: true,
                              autoPlay: true,
                              autoPlayInterval: Duration(seconds: 2)),
                          items: imageCarousel.map((assetfile) {
                            return Builder(
                              builder: (BuildContext context) {
                                return Padding(
                                  padding: const EdgeInsets.all(30),
                                  child: Image(
                                      image: NetworkImage(assetfile),
                                      width:
                                          MediaQuery.of(context).size.width / 2,
                                      height:
                                          MediaQuery.of(context).size.height /
                                              3,
                                      fit: BoxFit.contain),
                                );
                              },
                            );
                          }).toList(),
                        ),
                      ],
                    ),
                  ),
                  footer(MediaQuery.of(context).orientation ==
                      Orientation.landscape),
                ],
              ),
            ),
          )));
    } else {
      return Scaffold(
          backgroundColor: Colors.black,
          appBar: getTopBar(context),
          drawer: getDrawer(context),
          extendBodyBehindAppBar: true,
          body: Center(
              child: RawScrollbar(
            thumbColor: Color(0xFF313133),
            thickness: 10,
            thumbVisibility: true,
            trackVisibility: true,
            controller: scroller,
            child: SingleChildScrollView(
              controller: scroller,
              child: Column(
                children: [
                  Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Image.network(
                            "https://i.imgur.com/5VuyhL2.png",
                            height:
                                MediaQuery.of(context).size.height * 0.3,
                          ),
                        ),
                        Text(
                          "IGNITE 2023",
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: font,
                              fontSize: 35,
                              fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                        // Padding(
                        //   padding:
                        //       const EdgeInsets.fromLTRB(20, 20, 20, 20),
                        //   child: Text(
                        //     "The event starts in:",
                        //     style: TextStyle(
                        //         color: Colors.white,
                        //         fontFamily: font,
                        //         fontSize: 28),
                        //     textAlign: TextAlign.center,
                        //   ),
                        // ),
                        /*TextButton(
                        style: ButtonStyle(
                          foregroundColor:
                              MaterialStateProperty.all<Color>(textcolor),
                          backgroundColor: MaterialStatePropertyAll<Color>(
                              Colors.transparent),
                        ),
                        child: Padding(
                          padding:
                              const EdgeInsets.fromLTRB(50, 20, 50, 20),
                          child: Text(
                            "Registrations Open Now",
                            style: TextStyle(
                              color: textcolor,
                              fontFamily: font,
                              fontSize: 28,
                              fontWeight: FontWeight.bold
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        onPressed: () {
                          Navigator.popAndPushNamed(
                              context, "/registrations");
                        },
                        onHover: (value) {
                          if (value) {
                            setState(() {
                              textcolor = Colors.green;
                            });
                          } else {
                            setState(() {
                              textcolor = Colors.white;
                            });
                          }
                        },
                      ),
                      */
                        Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Text(
                            "The event starts in:",
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: font,
                                fontSize: 20),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Text(
                                      time_string[0],
                                      style: TextStyle(
                                          color: accentColor,
                                          fontFamily: fontTime,
                                          fontSize: 40),
                                    ),
                                  ),
                                  Text("Days",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontFamily: font,
                                          fontSize: 20))
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Text(
                                      time_string[1],
                                      style: TextStyle(
                                          color: accentColor,
                                          fontFamily: fontTime,
                                          fontSize: 40),
                                    ),
                                  ),
                                  Text("Hours",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontFamily: font,
                                          fontSize: 20))
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Text(
                                      time_string[2],
                                      style: TextStyle(
                                          color: accentColor,
                                          fontFamily: fontTime,
                                          fontSize: 40),
                                    ),
                                  ),
                                  Text("Minutes",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontFamily: font,
                                          fontSize: 20))
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Text(
                                      time_string[3],
                                      style: TextStyle(
                                          color: accentColor,
                                          fontFamily: fontTime,
                                          fontSize: 40),
                                    ),
                                  ),
                                  Text("Seconds",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontFamily: font,
                                          fontSize: 20))
                                ],
                              ),
                            ),
                          ],
                        ),
                      ]),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Padding(
                            padding: EdgeInsets.all(20),
                            child: Text(
                              "Photo Gallery",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: font,
                                  fontSize: 30),
                              textAlign: TextAlign.center,
                            )),
                        CarouselSlider(
                          options: CarouselOptions(
                              height: 400.0,
                              enableInfiniteScroll: true,
                              autoPlay: true,
                              autoPlayInterval: Duration(seconds: 2)),
                          items: imageCarousel.map((assetfile) {
                            return Builder(
                              builder: (BuildContext context) {
                                return Padding(
                                  padding: const EdgeInsets.all(30),
                                  child: Image(
                                      image: NetworkImage(assetfile),
                                      width: MediaQuery.of(context).size.width *
                                          0.8,
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.4,
                                      fit: BoxFit.contain),
                                );
                              },
                            );
                          }).toList(),
                        ),
                      ],
                    ),
                  ),
                  footer(MediaQuery.of(context).orientation ==
                      Orientation.landscape),
                ],
              ),
            ),
          )));
    }
  }
}
