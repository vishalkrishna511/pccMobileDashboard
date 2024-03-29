import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pccmobile/screens/EMTSdashboard.dart';
import 'package:pccmobile/screens/dashboard.dart';
import 'package:semicircle_indicator/semicircle_indicator.dart';
import 'package:pccmobile/services/buildStream.dart';

class WiresDashboard extends StatefulWidget {
  static const routeName = '/wires-dashboard';
  const WiresDashboard({super.key});

  @override
  State<WiresDashboard> createState() => _WiresDashboardState();
}

class _WiresDashboardState extends State<WiresDashboard> {
  BuildStream b = BuildStream();

  @override
  Widget build(BuildContext context) {
    final arguments = (ModalRoute.of(context)?.settings.arguments ??
        <String, dynamic>{}) as Map;

    bool isEMTS = false;
    bool isGMTS = false;
    bool isEPE = false;

    if (arguments['rail'] == 'EMTS') isEMTS = true;
    if (arguments['rail'] == 'GMTS') isGMTS = true;
    if (arguments['rail'] == 'EPE') isEPE = true;

    var index = 2;
    int current = 0;
    List<Color> listColors = [
      const Color.fromARGB(255, 255, 92, 176),
      const Color.fromARGB(255, 3, 71, 173),
    ];
    List<String> textInfo = ['Transaction Amount', 'Total Transactions'];
    List<String> numInfo = ["\$74.5B", '13,234'];
    return Scaffold(
      appBar: AppBar(
        leading: Row(
          children: [
            InkWell(
              child: Row(
                children: [
                  const Icon(Icons.arrow_left_rounded),
                  Text(
                    'Back',
                    style: GoogleFonts.albertSans(fontSize: 14),
                  ),
                ],
              ),
              onTap: () => Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) => const Dashboard(),
                ),
              ),
            ),
            const Spacer(),
          ],
        ),
        title: Center(
          child: Text(
            'WIRES DASHBOARD',
            style: GoogleFonts.albertSans(
                fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 8.0),
            child: Icon(Icons.settings),
          ),
          Padding(
            padding: EdgeInsets.only(right: 8.0),
            child: Icon(Icons.notification_important),
          )
        ],
        backgroundColor: const Color.fromRGBO(65, 65, 58, 0.922),
        elevation: 0,
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
            colors: <Color>[
              Color.fromARGB(255, 30, 29, 29),
              Color.fromARGB(255, 47, 48, 46),
              Color.fromARGB(235, 65, 65, 58),
            ],
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 237, 61, 216),
                          borderRadius: BorderRadius.circular(7)),
                      height: MediaQuery.of(context).size.height * 0.13,
                      width: MediaQuery.of(context).size.width * 0.45,
                      child: GridTile(
                        header: Text(
                          'Transaction Amount',
                          style: TextStyle(fontSize: 15, color: Colors.white),
                          textAlign: TextAlign.center,
                        ),
                        child: StreamBuilder<double>(
                          initialData: 75.5,
                          stream: b.generateTotalFedBalance,
                          builder: (
                            BuildContext context,
                            AsyncSnapshot<double> snapshot,
                          ) {
                            if (snapshot.connectionState ==
                                ConnectionState.waiting) {
                              return CircularProgressIndicator();
                            } else if (snapshot.connectionState ==
                                    ConnectionState.active ||
                                snapshot.connectionState ==
                                    ConnectionState.done) {
                              if (snapshot.hasError) {
                                return const Text('Error');
                              } else if (snapshot.hasData) {
                                return Align(
                                  alignment: Alignment.center,
                                  child: Text(
                                      '\$ ' +
                                          snapshot.data!.toStringAsFixed(2) +
                                          ' B',
                                      style: TextStyle(
                                          fontSize: 36, color: Colors.white)),
                                );
                              } else {
                                return const Text('Empty data');
                              }
                            } else {
                              return Text('State: ${snapshot.connectionState}');
                            }
                          },
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 75, 185, 236),
                          borderRadius: BorderRadius.circular(7)),
                      height: MediaQuery.of(context).size.height * 0.13,
                      width: MediaQuery.of(context).size.width * 0.45,
                      child: GridTile(
                        header: Text(
                          'Total Transactions',
                          style: TextStyle(fontSize: 15, color: Colors.white),
                          textAlign: TextAlign.center,
                        ),
                        child: StreamBuilder<int>(
                          stream: b.generateTransactions,
                          builder: (
                            BuildContext context,
                            AsyncSnapshot<int> snapshot,
                          ) {
                            if (snapshot.connectionState ==
                                ConnectionState.waiting) {
                              return SizedBox(
                                width: 20,
                                height: 20,
                                child: CircularProgressIndicator(),
                              );
                            } else if (snapshot.connectionState ==
                                    ConnectionState.active ||
                                snapshot.connectionState ==
                                    ConnectionState.done) {
                              if (snapshot.hasError) {
                                return const Text('Error');
                              } else if (snapshot.hasData) {
                                return Align(
                                  alignment: Alignment.center,
                                  child: Text(snapshot.data.toString(),
                                      style: TextStyle(
                                          fontSize: 46, color: Colors.white)),
                                );
                              } else {
                                return const Text('Empty data');
                              }
                            } else {
                              return Text('State: ${snapshot.connectionState}');
                            }
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.015,
              ),
              Container(
                child: Column(
                  children: [
                    Container(
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
                        initiallyExpanded: isEMTS,
                        trailing: const Icon(Icons.arrow_right),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(36),
                        ),
                        title: Center(
                          child: Row(
                            children: [
                              Container(
                                width: 20,
                                height: 20,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Colors.red,
                                ),
                                child: Center(
                                  child: Text(
                                    '!',
                                    style: GoogleFonts.albertSans(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ),
                              const Spacer(),
                              Text(
                                'EMTS Transaction Amount',
                                style: GoogleFonts.albertSans(
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                        children: <Widget>[
                          Container(
                            height: MediaQuery.of(context).size.height * 0.24,
                            width: MediaQuery.of(context).size.width * 0.88,
                            margin: const EdgeInsets.all(5),
                            child: ListView(
                              physics: const NeverScrollableScrollPhysics(),
                              children: [
                                SizedBox(
                                  height:
                                      MediaQuery.of(context).size.height * 0.4,
                                  width:
                                      MediaQuery.of(context).size.width * 0.8,
                                  child: ListView.builder(
                                      physics:
                                          const NeverScrollableScrollPhysics(),
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
                                                height: MediaQuery.of(context)
                                                        .size
                                                        .height *
                                                    0.2,
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.9,
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 8.0),
                                                  child: InkWell(
                                                    onTap: () => Navigator
                                                        .pushReplacement(
                                                      context,
                                                      MaterialPageRoute(
                                                        builder: (BuildContext
                                                                context) =>
                                                            const EMTSDashboard(),
                                                      ),
                                                    ),
                                                    child: Container(
                                                      // color: Colors.red,
                                                      width:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .width *
                                                              0.99,
                                                      child: Row(
                                                        // mainAxisAlignment:
                                                        //     MainAxisAlignment
                                                        //         .spaceEvenly,
                                                        children: [
                                                          SemicircularIndicator(
                                                            radius: 90,
                                                            color: Colors.red,
                                                            backgroundColor:
                                                                const Color
                                                                        .fromARGB(
                                                                    255,
                                                                    115,
                                                                    101,
                                                                    101),
                                                            bottomPadding: 0,
                                                            child: Text(
                                                              '\$32M',
                                                              style: GoogleFonts.albertSans(
                                                                  fontSize: 44,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  color: Colors
                                                                      .white),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                        .only(
                                                                    left: 8.0),
                                                            child: Align(
                                                              alignment: Alignment
                                                                  .centerRight,
                                                              child: Container(
                                                                height: MediaQuery.of(
                                                                            context)
                                                                        .size
                                                                        .height *
                                                                    0.15,
                                                                width: MediaQuery.of(
                                                                            context)
                                                                        .size
                                                                        .width *
                                                                    0.3,
                                                                child: Padding(
                                                                  padding: const EdgeInsets
                                                                          .only(
                                                                      left:
                                                                          8.0),
                                                                  child: Column(
                                                                    children: [
                                                                      Row(
                                                                        children: [
                                                                          Container(
                                                                            width:
                                                                                10,
                                                                            height:
                                                                                10,
                                                                            decoration:
                                                                                BoxDecoration(borderRadius: BorderRadius.circular(10), color: Colors.red),
                                                                          ),
                                                                          Padding(
                                                                            padding:
                                                                                const EdgeInsets.only(left: 0.5),
                                                                            child:
                                                                                Column(
                                                                              children: [
                                                                                Text(
                                                                                  '\$22,000,000',
                                                                                  style: GoogleFonts.albertSans(color: Colors.white, fontSize: 14, fontWeight: FontWeight.bold),
                                                                                ),
                                                                                Text(
                                                                                  'Completed',
                                                                                  style: GoogleFonts.albertSans(color: Colors.white, fontSize: 14, fontWeight: FontWeight.w600),
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
                                                                            width:
                                                                                10,
                                                                            height:
                                                                                10,
                                                                            decoration:
                                                                                BoxDecoration(borderRadius: BorderRadius.circular(10), color: const Color.fromARGB(255, 115, 101, 101)),
                                                                          ),
                                                                          Padding(
                                                                            padding:
                                                                                const EdgeInsets.only(left: 0.5),
                                                                            child:
                                                                                Column(
                                                                              children: [
                                                                                Text(
                                                                                  '\$10,000,000',
                                                                                  style: GoogleFonts.albertSans(color: Colors.white, fontSize: 14, fontWeight: FontWeight.bold),
                                                                                ),
                                                                                Text(
                                                                                  'In Progress',
                                                                                  style: GoogleFonts.albertSans(color: Colors.white, fontSize: 14, fontWeight: FontWeight.w600),
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
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.015,
                    ),
                    Container(
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
                        initiallyExpanded: isGMTS,
                        trailing: const Icon(Icons.arrow_right),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18),
                        ),
                        title: Center(
                          child: Row(
                            children: [
                              Text(
                                'GMTS Transaction Amount',
                                style: GoogleFonts.albertSans(
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
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
                                  height:
                                      MediaQuery.of(context).size.height * 0.4,
                                  width:
                                      MediaQuery.of(context).size.width * 0.8,
                                  child: ListView.builder(
                                      physics:
                                          const NeverScrollableScrollPhysics(),
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
                                                height: MediaQuery.of(context)
                                                        .size
                                                        .height *
                                                    0.2,
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.9,
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 8.0),
                                                  child: Container(
                                                    // color: Colors.red,
                                                    width:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .width *
                                                            0.99,
                                                    child: Row(
                                                      // mainAxisAlignment:
                                                      //     MainAxisAlignment
                                                      //         .spaceEvenly,
                                                      children: [
                                                        SemicircularIndicator(
                                                          radius: 90,
                                                          color: const Color
                                                                  .fromARGB(255,
                                                              237, 61, 216),
                                                          backgroundColor:
                                                              const Color
                                                                      .fromARGB(
                                                                  255,
                                                                  115,
                                                                  101,
                                                                  101),
                                                          bottomPadding: 0,
                                                          child: Text(
                                                            '\$32M',
                                                            style: GoogleFonts
                                                                .albertSans(
                                                                    fontSize:
                                                                        44,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w600,
                                                                    color: Colors
                                                                        .white),
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                      .only(
                                                                  left: 8.0),
                                                          child: Align(
                                                            alignment: Alignment
                                                                .centerRight,
                                                            child: Container(
                                                              height: MediaQuery.of(
                                                                          context)
                                                                      .size
                                                                      .height *
                                                                  0.15,
                                                              width: MediaQuery.of(
                                                                          context)
                                                                      .size
                                                                      .width *
                                                                  0.3,
                                                              child: Padding(
                                                                padding:
                                                                    const EdgeInsets
                                                                            .only(
                                                                        left:
                                                                            8.0),
                                                                child: Column(
                                                                  children: [
                                                                    Row(
                                                                      children: [
                                                                        Container(
                                                                          width:
                                                                              10,
                                                                          height:
                                                                              10,
                                                                          decoration:
                                                                              BoxDecoration(
                                                                            borderRadius:
                                                                                BorderRadius.circular(10),
                                                                            color: const Color.fromARGB(
                                                                                255,
                                                                                237,
                                                                                61,
                                                                                216),
                                                                          ),
                                                                        ),
                                                                        Padding(
                                                                          padding:
                                                                              const EdgeInsets.only(left: 0.5),
                                                                          child:
                                                                              Column(
                                                                            children: [
                                                                              Text(
                                                                                '\$22,000,000',
                                                                                style: GoogleFonts.albertSans(color: Colors.white, fontSize: 14, fontWeight: FontWeight.bold),
                                                                              ),
                                                                              Text(
                                                                                'Completed',
                                                                                style: GoogleFonts.albertSans(color: Colors.white, fontSize: 14, fontWeight: FontWeight.w600),
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
                                                                          width:
                                                                              10,
                                                                          height:
                                                                              10,
                                                                          decoration:
                                                                              BoxDecoration(
                                                                            borderRadius:
                                                                                BorderRadius.circular(10),
                                                                            color: const Color.fromARGB(
                                                                                255,
                                                                                115,
                                                                                101,
                                                                                101),
                                                                          ),
                                                                        ),
                                                                        Padding(
                                                                          padding:
                                                                              const EdgeInsets.only(left: 0.5),
                                                                          child:
                                                                              Column(
                                                                            children: [
                                                                              Text(
                                                                                '\$10,000,000',
                                                                                style: GoogleFonts.albertSans(color: Colors.white, fontSize: 14, fontWeight: FontWeight.bold),
                                                                              ),
                                                                              Text(
                                                                                'In Progress',
                                                                                style: GoogleFonts.albertSans(color: Colors.white, fontSize: 14, fontWeight: FontWeight.w600),
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
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.015,
                    ),
                    Container(
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
                        initiallyExpanded: isEPE,
                        trailing: const Icon(Icons.arrow_right),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18),
                        ),
                        title: Center(
                          child: Row(
                            children: [
                              Text(
                                'EPE Transaction Amount',
                                style: GoogleFonts.albertSans(
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
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
                                /// CUSTOM TABBAR
                                SizedBox(
                                  height:
                                      MediaQuery.of(context).size.height * 0.4,
                                  width:
                                      MediaQuery.of(context).size.width * 0.8,
                                  child: ListView.builder(
                                      physics:
                                          const NeverScrollableScrollPhysics(),
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
                                                height: MediaQuery.of(context)
                                                        .size
                                                        .height *
                                                    0.2,
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.9,
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 8.0),
                                                  child: Container(
                                                    // color: Colors.red,
                                                    width:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .width *
                                                            0.99,

                                                    child: Row(
                                                      // mainAxisAlignment:
                                                      //     MainAxisAlignment
                                                      //         .spaceEvenly,
                                                      children: [
                                                        SemicircularIndicator(
                                                          radius: 90,
                                                          color: const Color
                                                                  .fromARGB(255,
                                                              237, 61, 216),
                                                          backgroundColor:
                                                              const Color
                                                                      .fromARGB(
                                                                  255,
                                                                  115,
                                                                  101,
                                                                  101),
                                                          bottomPadding: 0,
                                                          child: Text(
                                                            '\$32M',
                                                            style: GoogleFonts
                                                                .albertSans(
                                                                    fontSize:
                                                                        44,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w600,
                                                                    color: Colors
                                                                        .white),
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                      .only(
                                                                  left: 8.0),
                                                          child: Align(
                                                            alignment: Alignment
                                                                .centerRight,
                                                            child: Container(
                                                              height: MediaQuery.of(
                                                                          context)
                                                                      .size
                                                                      .height *
                                                                  0.15,
                                                              width: MediaQuery.of(
                                                                          context)
                                                                      .size
                                                                      .width *
                                                                  0.3,
                                                              child: Padding(
                                                                padding:
                                                                    const EdgeInsets
                                                                            .only(
                                                                        left:
                                                                            8.0),
                                                                child: Column(
                                                                  children: [
                                                                    Row(
                                                                      children: [
                                                                        Container(
                                                                          width:
                                                                              10,
                                                                          height:
                                                                              10,
                                                                          decoration:
                                                                              BoxDecoration(
                                                                            borderRadius:
                                                                                BorderRadius.circular(10),
                                                                            color: const Color.fromARGB(
                                                                                255,
                                                                                237,
                                                                                61,
                                                                                216),
                                                                          ),
                                                                        ),
                                                                        Padding(
                                                                          padding:
                                                                              const EdgeInsets.only(left: 0.5),
                                                                          child:
                                                                              Column(
                                                                            children: [
                                                                              Text(
                                                                                '\$22,000,000',
                                                                                style: GoogleFonts.albertSans(color: Colors.white, fontSize: 14, fontWeight: FontWeight.bold),
                                                                              ),
                                                                              Text(
                                                                                'Completed',
                                                                                style: GoogleFonts.albertSans(color: Colors.white, fontSize: 14, fontWeight: FontWeight.w600),
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
                                                                          width:
                                                                              10,
                                                                          height:
                                                                              10,
                                                                          decoration:
                                                                              BoxDecoration(
                                                                            borderRadius:
                                                                                BorderRadius.circular(10),
                                                                            color: const Color.fromARGB(
                                                                                255,
                                                                                115,
                                                                                101,
                                                                                101),
                                                                          ),
                                                                        ),
                                                                        Padding(
                                                                          padding:
                                                                              const EdgeInsets.only(left: 0.5),
                                                                          child:
                                                                              Column(
                                                                            children: [
                                                                              Text(
                                                                                '\$10,000,000',
                                                                                style: GoogleFonts.albertSans(color: Colors.white, fontSize: 14, fontWeight: FontWeight.bold),
                                                                              ),
                                                                              Text(
                                                                                'In Progress',
                                                                                style: GoogleFonts.albertSans(color: Colors.white, fontSize: 14, fontWeight: FontWeight.w600),
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
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color.fromARGB(255, 47, 48, 46),
        selectedItemColor: Colors.yellow,
        unselectedItemColor: Colors.white,
        currentIndex: index,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.warning), label: "ALERTS"),
          BottomNavigationBarItem(
              icon: Icon(Icons.graphic_eq_outlined), label: "WIRES"),
        ],
        onTap: (int index) {
          switch (index) {
            case 0:
              Navigator.of(context).pushNamed(Dashboard.routeName);
              break;
          }
        },
      ),
    );
  }
}
