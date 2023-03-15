import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:semicircle_indicator/semicircle_indicator.dart';

class ChannelsScreen extends StatefulWidget {
  const ChannelsScreen({super.key});

  @override
  State<ChannelsScreen> createState() => _ChannelsScreenState();
}

class _ChannelsScreenState extends State<ChannelsScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(
              gradient: const LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: <Color>[
                  Color.fromARGB(255, 78, 72, 72),
                  Color.fromARGB(255, 47, 48, 46),
                  // Color.fromARGB(235, 65, 65, 58),
                ],
              ),
              borderRadius: BorderRadius.circular(8)),
          child: ExpansionTile(
            initiallyExpanded: true,
            trailing: const Icon(Icons.arrow_right),
            leading: const Icon(Icons.graphic_eq_outlined),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18),
            ),
            title: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // const Spacer(),
                  Center(
                    child: Text(
                      'Wires',
                      style: GoogleFonts.albertSans(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            children: <Widget>[
              Container(
                // color: Color.fromARGB(232, 51, 48, 43),
                height: MediaQuery.of(context).size.height * 0.24,
                width: MediaQuery.of(context).size.width * 0.88,
                margin: const EdgeInsets.all(5),
                child: ListView(
                  physics: const NeverScrollableScrollPhysics(),
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.4,
                      width: MediaQuery.of(context).size.width * 0.8,
                      child: ListView.builder(
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: 1,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (ctx, index) {
                            return Column(
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      var current = index;
                                    });
                                  },
                                  child: Container(
                                    height: MediaQuery.of(context).size.height *
                                        0.2,
                                    width:
                                        MediaQuery.of(context).size.width * 0.9,
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 8.0),
                                      child: Container(
                                        // color: Colors.red,
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.99,
                                        child: Row(
                                          // mainAxisAlignment:
                                          //     MainAxisAlignment
                                          //         .spaceEvenly,
                                          children: [
                                            SemicircularIndicator(
                                              radius: 90,
                                              progress: 0.94,
                                              color: const Color.fromARGB(
                                                  255, 237, 61, 216),
                                              backgroundColor:
                                                  const Color.fromARGB(
                                                      255, 115, 101, 101),
                                              bottomPadding: 0,
                                              child: Text(
                                                '8976',
                                                style: GoogleFonts.albertSans(
                                                    fontSize: 44,
                                                    fontWeight: FontWeight.w600,
                                                    color: Colors.white),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 8.0),
                                              child: Align(
                                                alignment:
                                                    Alignment.centerRight,
                                                child: Container(
                                                  height: MediaQuery.of(context)
                                                          .size
                                                          .height *
                                                      0.15,
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      0.3,
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 8.0),
                                                    child: Column(
                                                      children: [
                                                        Row(
                                                          children: [
                                                            Container(
                                                              width: 10,
                                                              height: 10,
                                                              decoration:
                                                                  BoxDecoration(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            10),
                                                                color: const Color
                                                                        .fromARGB(
                                                                    255,
                                                                    237,
                                                                    61,
                                                                    216),
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsets
                                                                          .only(
                                                                      left:
                                                                          0.5),
                                                              child: Column(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceEvenly,
                                                                children: [
                                                                  Text(
                                                                    '8949',
                                                                    style: GoogleFonts.albertSans(
                                                                        color: Colors
                                                                            .white,
                                                                        fontSize:
                                                                            14,
                                                                        fontWeight:
                                                                            FontWeight.bold),
                                                                  ),
                                                                  Text(
                                                                    'Credit Volume',
                                                                    style: GoogleFonts.albertSans(
                                                                        color: Colors
                                                                            .white,
                                                                        fontSize:
                                                                            14,
                                                                        fontWeight:
                                                                            FontWeight.w600),
                                                                  ),
                                                                ],
                                                              ),
                                                            )
                                                          ],
                                                        ),
                                                        const Spacer(),
                                                        Row(
                                                          children: [
                                                            Container(
                                                              width: 10,
                                                              height: 10,
                                                              decoration:
                                                                  BoxDecoration(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            10),
                                                                color: const Color
                                                                        .fromARGB(
                                                                    255,
                                                                    115,
                                                                    101,
                                                                    101),
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsets
                                                                          .only(
                                                                      left:
                                                                          0.5),
                                                              child: Column(
                                                                children: [
                                                                  Text(
                                                                    '27',
                                                                    style: GoogleFonts.albertSans(
                                                                        color: Colors
                                                                            .white,
                                                                        fontSize:
                                                                            14,
                                                                        fontWeight:
                                                                            FontWeight.bold),
                                                                  ),
                                                                  Text(
                                                                    'Debit Volume',
                                                                    style: GoogleFonts.albertSans(
                                                                        color: Colors
                                                                            .white,
                                                                        fontSize:
                                                                            14,
                                                                        fontWeight:
                                                                            FontWeight.w600),
                                                                  ),
                                                                ],
                                                              ),
                                                            )
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            );
                          }),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(
              gradient: const LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: <Color>[
                  Color.fromARGB(255, 78, 72, 72),
                  Color.fromARGB(255, 47, 48, 46),
                  // Color.fromARGB(235, 65, 65, 58),
                ],
              ),
              borderRadius: BorderRadius.circular(8)),
          child: ExpansionTile(
            initiallyExpanded: true,
            trailing: const Icon(Icons.arrow_right),
            leading: const Icon(Icons.track_changes_rounded),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18),
            ),
            title: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // const Spacer(),
                  Center(
                    child: Text(
                      'ACH',
                      style: GoogleFonts.albertSans(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            children: <Widget>[
              Container(
                // color: Color.fromARGB(232, 51, 48, 43),
                height: MediaQuery.of(context).size.height * 0.24,
                width: MediaQuery.of(context).size.width * 0.88,
                margin: const EdgeInsets.all(5),
                child: ListView(
                  physics: const NeverScrollableScrollPhysics(),
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.4,
                      width: MediaQuery.of(context).size.width * 0.8,
                      child: ListView.builder(
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: 1,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (ctx, index) {
                            return Column(
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      var current = index;
                                    });
                                  },
                                  child: Container(
                                    height: MediaQuery.of(context).size.height *
                                        0.2,
                                    width:
                                        MediaQuery.of(context).size.width * 0.9,
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 8.0),
                                      child: Container(
                                        // color: Colors.red,
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.99,
                                        child: Row(
                                          // mainAxisAlignment:
                                          //     MainAxisAlignment
                                          //         .spaceEvenly,
                                          children: [
                                            SemicircularIndicator(
                                              radius: 90,
                                              progress: 0.67,
                                              color: const Color.fromARGB(
                                                  255, 237, 61, 216),
                                              backgroundColor:
                                                  const Color.fromARGB(
                                                      255, 115, 101, 101),
                                              bottomPadding: 0,
                                              child: Text(
                                                '303',
                                                style: GoogleFonts.albertSans(
                                                    fontSize: 44,
                                                    fontWeight: FontWeight.w600,
                                                    color: Colors.white),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 8.0),
                                              child: Align(
                                                alignment:
                                                    Alignment.centerRight,
                                                child: Container(
                                                  height: MediaQuery.of(context)
                                                          .size
                                                          .height *
                                                      0.15,
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      0.3,
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 8.0),
                                                    child: Column(
                                                      children: [
                                                        Row(
                                                          children: [
                                                            Container(
                                                              width: 10,
                                                              height: 10,
                                                              decoration:
                                                                  BoxDecoration(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            10),
                                                                color: const Color
                                                                        .fromARGB(
                                                                    255,
                                                                    237,
                                                                    61,
                                                                    216),
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsets
                                                                          .only(
                                                                      left:
                                                                          0.5),
                                                              child: Column(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceEvenly,
                                                                children: [
                                                                  Text(
                                                                    '199',
                                                                    style: GoogleFonts.albertSans(
                                                                        color: Colors
                                                                            .white,
                                                                        fontSize:
                                                                            14,
                                                                        fontWeight:
                                                                            FontWeight.bold),
                                                                  ),
                                                                  Text(
                                                                    'Credit Volume',
                                                                    style: GoogleFonts.albertSans(
                                                                        color: Colors
                                                                            .white,
                                                                        fontSize:
                                                                            14,
                                                                        fontWeight:
                                                                            FontWeight.w600),
                                                                  ),
                                                                ],
                                                              ),
                                                            )
                                                          ],
                                                        ),
                                                        const Spacer(),
                                                        Row(
                                                          children: [
                                                            Container(
                                                              width: 10,
                                                              height: 10,
                                                              decoration:
                                                                  BoxDecoration(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            10),
                                                                color: const Color
                                                                        .fromARGB(
                                                                    255,
                                                                    115,
                                                                    101,
                                                                    101),
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsets
                                                                          .only(
                                                                      left:
                                                                          0.5),
                                                              child: Column(
                                                                children: [
                                                                  Text(
                                                                    '104',
                                                                    style: GoogleFonts.albertSans(
                                                                        color: Colors
                                                                            .white,
                                                                        fontSize:
                                                                            14,
                                                                        fontWeight:
                                                                            FontWeight.bold),
                                                                  ),
                                                                  Text(
                                                                    'Debit Volume',
                                                                    style: GoogleFonts.albertSans(
                                                                        color: Colors
                                                                            .white,
                                                                        fontSize:
                                                                            14,
                                                                        fontWeight:
                                                                            FontWeight.w600),
                                                                  ),
                                                                ],
                                                              ),
                                                            )
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            );
                          }),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(
              gradient: const LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: <Color>[
                  Color.fromARGB(255, 78, 72, 72),
                  Color.fromARGB(255, 47, 48, 46),
                  // Color.fromARGB(235, 65, 65, 58),
                ],
              ),
              borderRadius: BorderRadius.circular(8)),
          child: ExpansionTile(
            initiallyExpanded: true,
            trailing: const Icon(Icons.arrow_right),
            leading: const Icon(Icons.graphic_eq_outlined),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18),
            ),
            title: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // const Spacer(),
                  Center(
                    child: Text(
                      'Checks',
                      style: GoogleFonts.albertSans(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            children: <Widget>[
              Container(
                // color: Color.fromARGB(232, 51, 48, 43),
                height: MediaQuery.of(context).size.height * 0.24,
                width: MediaQuery.of(context).size.width * 0.88,
                margin: const EdgeInsets.all(5),
                child: ListView(
                  physics: const NeverScrollableScrollPhysics(),
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.4,
                      width: MediaQuery.of(context).size.width * 0.8,
                      child: ListView.builder(
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: 1,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (ctx, index) {
                            return Column(
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      var current = index;
                                    });
                                  },
                                  child: Container(
                                    height: MediaQuery.of(context).size.height *
                                        0.2,
                                    width:
                                        MediaQuery.of(context).size.width * 0.9,
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 8.0),
                                      child: Container(
                                        // color: Colors.red,
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.99,
                                        child: Row(
                                          // mainAxisAlignment:
                                          //     MainAxisAlignment
                                          //         .spaceEvenly,
                                          children: [
                                            SemicircularIndicator(
                                              radius: 90,
                                              progress: 0.81,
                                              color: const Color.fromARGB(
                                                  255, 237, 61, 216),
                                              backgroundColor:
                                                  const Color.fromARGB(
                                                      255, 115, 101, 101),
                                              bottomPadding: 0,
                                              child: Text(
                                                '170',
                                                style: GoogleFonts.albertSans(
                                                    fontSize: 44,
                                                    fontWeight: FontWeight.w600,
                                                    color: Colors.white),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 8.0),
                                              child: Align(
                                                alignment:
                                                    Alignment.centerRight,
                                                child: Container(
                                                  height: MediaQuery.of(context)
                                                          .size
                                                          .height *
                                                      0.15,
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      0.3,
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 8.0),
                                                    child: Column(
                                                      children: [
                                                        Row(
                                                          children: [
                                                            Container(
                                                              width: 10,
                                                              height: 10,
                                                              decoration:
                                                                  BoxDecoration(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            10),
                                                                color: const Color
                                                                        .fromARGB(
                                                                    255,
                                                                    237,
                                                                    61,
                                                                    216),
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsets
                                                                          .only(
                                                                      left:
                                                                          0.5),
                                                              child: Column(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceEvenly,
                                                                children: [
                                                                  Text(
                                                                    '104',
                                                                    style: GoogleFonts.albertSans(
                                                                        color: Colors
                                                                            .white,
                                                                        fontSize:
                                                                            14,
                                                                        fontWeight:
                                                                            FontWeight.bold),
                                                                  ),
                                                                  Text(
                                                                    'Credit Volume',
                                                                    style: GoogleFonts.albertSans(
                                                                        color: Colors
                                                                            .white,
                                                                        fontSize:
                                                                            14,
                                                                        fontWeight:
                                                                            FontWeight.w600),
                                                                  ),
                                                                ],
                                                              ),
                                                            )
                                                          ],
                                                        ),
                                                        const Spacer(),
                                                        Row(
                                                          children: [
                                                            Container(
                                                              width: 10,
                                                              height: 10,
                                                              decoration:
                                                                  BoxDecoration(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            10),
                                                                color: const Color
                                                                        .fromARGB(
                                                                    255,
                                                                    115,
                                                                    101,
                                                                    101),
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsets
                                                                          .only(
                                                                      left:
                                                                          0.5),
                                                              child: Column(
                                                                children: [
                                                                  Text(
                                                                    '66',
                                                                    style: GoogleFonts.albertSans(
                                                                        color: Colors
                                                                            .white,
                                                                        fontSize:
                                                                            14,
                                                                        fontWeight:
                                                                            FontWeight.bold),
                                                                  ),
                                                                  Text(
                                                                    'Debit Volume',
                                                                    style: GoogleFonts.albertSans(
                                                                        color: Colors
                                                                            .white,
                                                                        fontSize:
                                                                            14,
                                                                        fontWeight:
                                                                            FontWeight.w600),
                                                                  ),
                                                                ],
                                                              ),
                                                            )
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            );
                          }),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    ]);
  }
}
