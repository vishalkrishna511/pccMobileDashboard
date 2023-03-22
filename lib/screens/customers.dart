import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pccmobile/screens/doughnut.dart';
import 'package:semicircle_indicator/semicircle_indicator.dart';
import 'package:toggle_switch/toggle_switch.dart';

class CustomerScreen extends StatefulWidget {
  const CustomerScreen({super.key});

  @override
  State<CustomerScreen> createState() => _CustomerScreenState();
}

class _CustomerScreenState extends State<CustomerScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
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
      child: ListView(
        children: [
          Row(
            children: const [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(
                  Icons.search,
                  color: Colors.white,
                ),
              ),
              ImageIcon(
                AssetImage('assets/filter.png'),
                color: Colors.white,
              ),
              Spacer(),
              Icon(Icons.refresh, color: Colors.white)
            ],
          ),
          Container(
            decoration: BoxDecoration(
                gradient: const LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: <Color>[
                    Color.fromARGB(129, 55, 48, 48),
                    Color.fromARGB(255, 42, 47, 42),
                    // Color.fromARGB(235, 65, 65, 58),
                  ],
                ),
                borderRadius: BorderRadius.circular(8)),
            child: ExpansionTile(
              initiallyExpanded: true,
              // leading: const Icon(Icons.arrow_drop_up),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(36),
              ),
              title: Center(
                child: Text(
                  'Amazon',
                  style: GoogleFonts.albertSans(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              children: <Widget>[
                Container(
                  height: MediaQuery.of(context).size.height * 0.41,
                  width: MediaQuery.of(context).size.width * 0.88,
                  margin: const EdgeInsets.all(5),
                  child: ListView(
                    physics: const NeverScrollableScrollPhysics(),
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.6,
                        width: MediaQuery.of(context).size.width * 0.8,
                        child: ListView.builder(
                            physics: const NeverScrollableScrollPhysics(),
                            itemCount: 3,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (ctx, index) {
                              return Column(
                                children: [
                                  Container(
                                    height: MediaQuery.of(context).size.height *
                                        0.4,
                                    width:
                                        MediaQuery.of(context).size.width * 0.9,
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 8.0),
                                      child: Container(
                                        // color: Colors.red,
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.99,
                                        decoration: BoxDecoration(
                                            color: const Color.fromARGB(
                                                255, 33, 21, 21),
                                            borderRadius:
                                                BorderRadius.circular(15)),
                                        child: DefaultTabController(
                                          length: 3,
                                          child: Scaffold(
                                            appBar: AppBar(
                                              toolbarHeight: 0.5,
                                              backgroundColor:
                                                  const Color.fromARGB(
                                                      244, 33, 21, 21),
                                              bottom: TabBar(
                                                indicatorSize:
                                                    TabBarIndicatorSize.label,
                                                indicatorColor: Colors.white,
                                                tabs: [
                                                  Text(
                                                    'ACH',
                                                    style:
                                                        GoogleFonts.albertSans(
                                                            fontSize: 14),
                                                  ),
                                                  Text(
                                                    'Wires',
                                                    style:
                                                        GoogleFonts.albertSans(
                                                            fontSize: 14),
                                                  ),
                                                  Text(
                                                    'Instant Payments',
                                                    style:
                                                        GoogleFonts.albertSans(
                                                            fontSize: 14),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            body: TabBarView(children: [
                                              Container(
                                                height: MediaQuery.of(context)
                                                        .size
                                                        .height *
                                                    0.2,
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.9,
                                                color: const Color.fromARGB(
                                                    244, 33, 21, 21),
                                                child: Column(
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              15.0),
                                                      child: Center(
                                                        child: ToggleSwitch(
                                                          fontSize: 16,
                                                          cornerRadius: 20,
                                                          animate: true,
                                                          animationDuration:
                                                              750,
                                                          radiusStyle: true,
                                                          minWidth: 100,
                                                          minHeight: 30,
                                                          activeBgColor: const [
                                                            Colors.white,
                                                          ],
                                                          activeFgColor:
                                                              Colors.black,
                                                          inactiveBgColor:
                                                              const Color
                                                                      .fromARGB(
                                                                  255,
                                                                  192,
                                                                  179,
                                                                  179),
                                                          totalSwitches: 2,
                                                          labels: const [
                                                            'Volume',
                                                            'Value',
                                                          ],
                                                          onToggle: (index) {},
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              right: 8.0),
                                                      child: Container(
                                                        width: MediaQuery.of(
                                                                    context)
                                                                .size
                                                                .width *
                                                            0.8,
                                                        height: 200,
                                                        child: const Doughnut(),
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              ),
                                              Container(
                                                height: MediaQuery.of(context)
                                                        .size
                                                        .height *
                                                    0.2,
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.9,
                                                color: const Color.fromARGB(
                                                    244, 33, 21, 21),
                                                child: Column(
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              15.0),
                                                      child: Center(
                                                        child: ToggleSwitch(
                                                          fontSize: 16,
                                                          cornerRadius: 20,
                                                          animate: true,
                                                          animationDuration:
                                                              750,
                                                          radiusStyle: true,
                                                          minWidth: 100,
                                                          minHeight: 30,
                                                          activeBgColor: const [
                                                            Colors.white,
                                                          ],
                                                          activeFgColor:
                                                              Colors.black,
                                                          inactiveBgColor:
                                                              const Color
                                                                      .fromARGB(
                                                                  255,
                                                                  192,
                                                                  179,
                                                                  179),
                                                          totalSwitches: 2,
                                                          labels: const [
                                                            'Volume',
                                                            'Value',
                                                          ],
                                                          onToggle: (index) {},
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              right: 8.0),
                                                      child: Container(
                                                        width: MediaQuery.of(
                                                                    context)
                                                                .size
                                                                .width *
                                                            0.8,
                                                        height: 200,
                                                        child: const Doughnut(),
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              ),
                                              Container(
                                                height: MediaQuery.of(context)
                                                        .size
                                                        .height *
                                                    0.2,
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.9,
                                                color: const Color.fromARGB(
                                                    244, 33, 21, 21),
                                                child: Column(
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              15.0),
                                                      child: Center(
                                                        child: ToggleSwitch(
                                                          fontSize: 16,
                                                          cornerRadius: 20,
                                                          animate: true,
                                                          animationDuration:
                                                              750,
                                                          radiusStyle: true,
                                                          minWidth: 100,
                                                          minHeight: 30,
                                                          activeBgColor: const [
                                                            Colors.white,
                                                          ],
                                                          activeFgColor:
                                                              Colors.black,
                                                          inactiveBgColor:
                                                              const Color
                                                                      .fromARGB(
                                                                  255,
                                                                  192,
                                                                  179,
                                                                  179),
                                                          totalSwitches: 2,
                                                          labels: const [
                                                            'Volume',
                                                            'Value',
                                                          ],
                                                          onToggle: (index) {},
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              right: 8.0),
                                                      child: Container(
                                                        width: MediaQuery.of(
                                                                    context)
                                                                .size
                                                                .width *
                                                            0.8,
                                                        height: 200,
                                                        child: const Doughnut(),
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              ),
                                            ]),
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
                Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.84,
                    height: MediaQuery.of(context).size.height * 0.11,
                    child: Row(
                      children: [
                        InkWell(
                          onTap: () {},
                          child: Padding(
                            padding: const EdgeInsets.only(
                                top: 8, bottom: 15, left: 5),
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.2,
                              child: Text(
                                'Customer Profile',
                                textAlign: TextAlign.center,
                                style: GoogleFonts.albertSans(
                                    fontSize: 16, color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {},
                          child: Padding(
                            padding: const EdgeInsets.only(
                                top: 8, bottom: 15, left: 5),
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.18,
                              child: Text(
                                'Banker Info',
                                textAlign: TextAlign.center,
                                style: GoogleFonts.albertSans(
                                    fontSize: 16, color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {},
                          child: Padding(
                            padding: const EdgeInsets.only(
                                top: 8, bottom: 15, left: 5),
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.22,
                              child: Text(
                                'Pending Transaction',
                                textAlign: TextAlign.center,
                                style: GoogleFonts.albertSans(
                                    fontSize: 14, color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {},
                          child: Padding(
                            padding: const EdgeInsets.only(
                                top: 8, bottom: 15, left: 5),
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.18,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
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
                                  Text(
                                    'Alerts',
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.albertSans(
                                        fontSize: 14, color: Colors.white),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15.0),
            child: Container(
              decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: <Color>[
                      Color.fromARGB(129, 55, 48, 48),
                      Color.fromARGB(255, 42, 47, 42),
                      // Color.fromARGB(235, 65, 65, 58),
                    ],
                  ),
                  borderRadius: BorderRadius.circular(8)),
              child: ExpansionTile(
                // leading: const Icon(Icons.arrow_drop_up),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(36),
                ),
                title: Center(
                  child: Text(
                    'Dell',
                    style: GoogleFonts.albertSans(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
                children: <Widget>[
                  Container(
                    height: MediaQuery.of(context).size.height * 0.41,
                    width: MediaQuery.of(context).size.width * 0.88,
                    margin: const EdgeInsets.all(5),
                    child: ListView(
                      physics: const NeverScrollableScrollPhysics(),
                      children: [
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.6,
                          width: MediaQuery.of(context).size.width * 0.8,
                          child: ListView.builder(
                              physics: const NeverScrollableScrollPhysics(),
                              itemCount: 1,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (ctx, index) {
                                return Column(
                                  children: [
                                    Container(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.4,
                                      width: MediaQuery.of(context).size.width *
                                          0.9,
                                      child: Padding(
                                        padding:
                                            const EdgeInsets.only(left: 8.0),
                                        child: Container(
                                          // color: Colors.red,
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.99,
                                          decoration: BoxDecoration(
                                              color: const Color.fromARGB(
                                                  255, 33, 21, 21),
                                              borderRadius:
                                                  BorderRadius.circular(15)),
                                          child: DefaultTabController(
                                            length: 3,
                                            child: Scaffold(
                                              appBar: AppBar(
                                                toolbarHeight: 0.5,
                                                backgroundColor:
                                                    const Color.fromARGB(
                                                        244, 33, 21, 21),
                                                bottom: TabBar(
                                                  indicatorSize:
                                                      TabBarIndicatorSize.label,
                                                  indicatorColor: Colors.white,
                                                  tabs: [
                                                    Text(
                                                      'ACH',
                                                      style: GoogleFonts
                                                          .albertSans(
                                                              fontSize: 14),
                                                    ),
                                                    Text(
                                                      'Wires',
                                                      style: GoogleFonts
                                                          .albertSans(
                                                              fontSize: 14),
                                                    ),
                                                    Text(
                                                      'Instant Payments',
                                                      style: GoogleFonts
                                                          .albertSans(
                                                              fontSize: 14),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              body: TabBarView(children: [
                                                Container(
                                                  height: MediaQuery.of(context)
                                                          .size
                                                          .height *
                                                      0.2,
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      0.9,
                                                  color: const Color.fromARGB(
                                                      244, 33, 21, 21),
                                                  child: Column(
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .all(15.0),
                                                        child: Center(
                                                          child: ToggleSwitch(
                                                            fontSize: 16,
                                                            cornerRadius: 20,
                                                            animate: true,
                                                            animationDuration:
                                                                750,
                                                            radiusStyle: true,
                                                            minWidth: 100,
                                                            minHeight: 30,
                                                            activeBgColor: const [
                                                              Colors.white,
                                                            ],
                                                            activeFgColor:
                                                                Colors.black,
                                                            inactiveBgColor:
                                                                const Color
                                                                        .fromARGB(
                                                                    255,
                                                                    192,
                                                                    179,
                                                                    179),
                                                            totalSwitches: 2,
                                                            labels: const [
                                                              'Volume',
                                                              'Value',
                                                            ],
                                                            onToggle:
                                                                (index) {},
                                                          ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .only(
                                                                right: 8.0),
                                                        child: Container(
                                                          width: MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .width *
                                                              0.8,
                                                          height: 200,
                                                          child:
                                                              const Doughnut(),
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                ),
                                                Container(
                                                  height: MediaQuery.of(context)
                                                          .size
                                                          .height *
                                                      0.2,
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      0.9,
                                                  color: const Color.fromARGB(
                                                      244, 33, 21, 21),
                                                  child: Column(
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .all(15.0),
                                                        child: Center(
                                                          child: ToggleSwitch(
                                                            fontSize: 16,
                                                            cornerRadius: 20,
                                                            animate: true,
                                                            animationDuration:
                                                                750,
                                                            radiusStyle: true,
                                                            minWidth: 100,
                                                            minHeight: 30,
                                                            activeBgColor: const [
                                                              Colors.white,
                                                            ],
                                                            activeFgColor:
                                                                Colors.black,
                                                            inactiveBgColor:
                                                                const Color
                                                                        .fromARGB(
                                                                    255,
                                                                    192,
                                                                    179,
                                                                    179),
                                                            totalSwitches: 2,
                                                            labels: const [
                                                              'Volume',
                                                              'Value',
                                                            ],
                                                            onToggle:
                                                                (index) {},
                                                          ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .only(
                                                                right: 8.0),
                                                        child: Container(
                                                          width: MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .width *
                                                              0.8,
                                                          height: 200,
                                                          child:
                                                              const Doughnut(),
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                ),
                                                Container(
                                                  height: MediaQuery.of(context)
                                                          .size
                                                          .height *
                                                      0.2,
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      0.9,
                                                  color: const Color.fromARGB(
                                                      244, 33, 21, 21),
                                                  child: Column(
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .all(15.0),
                                                        child: Center(
                                                          child: ToggleSwitch(
                                                            fontSize: 16,
                                                            cornerRadius: 20,
                                                            animate: true,
                                                            animationDuration:
                                                                750,
                                                            radiusStyle: true,
                                                            minWidth: 100,
                                                            minHeight: 30,
                                                            activeBgColor: const [
                                                              Colors.white,
                                                            ],
                                                            activeFgColor:
                                                                Colors.black,
                                                            inactiveBgColor:
                                                                const Color
                                                                        .fromARGB(
                                                                    255,
                                                                    192,
                                                                    179,
                                                                    179),
                                                            totalSwitches: 2,
                                                            labels: const [
                                                              'Volume',
                                                              'Value',
                                                            ],
                                                            onToggle:
                                                                (index) {},
                                                          ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .only(
                                                                right: 8.0),
                                                        child: Container(
                                                          width: MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .width *
                                                              0.8,
                                                          height: 200,
                                                          child:
                                                              const Doughnut(),
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                ),
                                              ]),
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
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.84,
                      height: MediaQuery.of(context).size.height * 0.11,
                      child: Row(
                        children: [
                          InkWell(
                            onTap: () {},
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  top: 8, bottom: 15, left: 5),
                              child: Container(
                                width: MediaQuery.of(context).size.width * 0.2,
                                child: Text(
                                  'Customer Profile',
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.albertSans(
                                      fontSize: 16, color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {},
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  top: 8, bottom: 15, left: 5),
                              child: Container(
                                width: MediaQuery.of(context).size.width * 0.18,
                                child: Text(
                                  'Banker Info',
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.albertSans(
                                      fontSize: 16, color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {},
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  top: 8, bottom: 15, left: 5),
                              child: Container(
                                width: MediaQuery.of(context).size.width * 0.22,
                                child: Text(
                                  'Pending Transaction',
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.albertSans(
                                      fontSize: 14, color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {},
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  top: 8, bottom: 15, left: 5),
                              child: Container(
                                width: MediaQuery.of(context).size.width * 0.18,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
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
                                    Text(
                                      'Alerts',
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.albertSans(
                                          fontSize: 14, color: Colors.white),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15.0),
            child: Container(
              decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: <Color>[
                      Color.fromARGB(129, 55, 48, 48),
                      Color.fromARGB(255, 42, 47, 42),
                      // Color.fromARGB(235, 65, 65, 58),
                    ],
                  ),
                  borderRadius: BorderRadius.circular(8)),
              child: ExpansionTile(
                leading: const Icon(Icons.arrow_drop_up),
                trailing: const Icon(
                  Icons.warning_amber_rounded,
                  color: Colors.red,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(36),
                ),
                title: Center(
                  child: Text(
                    'United Airlines',
                    style: GoogleFonts.albertSans(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
                children: <Widget>[
                  Container(
                    height: MediaQuery.of(context).size.height * 0.41,
                    width: MediaQuery.of(context).size.width * 0.88,
                    margin: const EdgeInsets.all(5),
                    child: ListView(
                      physics: const NeverScrollableScrollPhysics(),
                      children: [
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.6,
                          width: MediaQuery.of(context).size.width * 0.8,
                          child: ListView.builder(
                              physics: const NeverScrollableScrollPhysics(),
                              itemCount: 1,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (ctx, index) {
                                return Column(
                                  children: [
                                    Container(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.4,
                                      width: MediaQuery.of(context).size.width *
                                          0.9,
                                      child: Padding(
                                        padding:
                                            const EdgeInsets.only(left: 8.0),
                                        child: Container(
                                          // color: Colors.red,
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.99,
                                          decoration: BoxDecoration(
                                              color: const Color.fromARGB(
                                                  255, 33, 21, 21),
                                              borderRadius:
                                                  BorderRadius.circular(15)),
                                          child: DefaultTabController(
                                            length: 3,
                                            child: Scaffold(
                                              appBar: AppBar(
                                                toolbarHeight: 0.5,
                                                backgroundColor:
                                                    const Color.fromARGB(
                                                        244, 33, 21, 21),
                                                bottom: TabBar(
                                                  indicatorSize:
                                                      TabBarIndicatorSize.label,
                                                  indicatorColor: Colors.white,
                                                  tabs: [
                                                    Text(
                                                      'ACH',
                                                      style: GoogleFonts
                                                          .albertSans(
                                                              fontSize: 14),
                                                    ),
                                                    Text(
                                                      'Wires',
                                                      style: GoogleFonts
                                                          .albertSans(
                                                              fontSize: 14),
                                                    ),
                                                    Text(
                                                      'Instant Payments',
                                                      style: GoogleFonts
                                                          .albertSans(
                                                              fontSize: 14),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              body: TabBarView(children: [
                                                Container(
                                                  height: MediaQuery.of(context)
                                                          .size
                                                          .height *
                                                      0.2,
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      0.9,
                                                  color: const Color.fromARGB(
                                                      244, 33, 21, 21),
                                                  child: Column(
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .all(15.0),
                                                        child: Center(
                                                          child: ToggleSwitch(
                                                            fontSize: 16,
                                                            cornerRadius: 20,
                                                            animate: true,
                                                            animationDuration:
                                                                750,
                                                            radiusStyle: true,
                                                            minWidth: 100,
                                                            minHeight: 30,
                                                            activeBgColor: const [
                                                              Colors.white,
                                                            ],
                                                            activeFgColor:
                                                                Colors.black,
                                                            inactiveBgColor:
                                                                const Color
                                                                        .fromARGB(
                                                                    255,
                                                                    192,
                                                                    179,
                                                                    179),
                                                            totalSwitches: 2,
                                                            labels: const [
                                                              'Volume',
                                                              'Value',
                                                            ],
                                                            onToggle:
                                                                (index) {},
                                                          ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .only(
                                                                right: 8.0),
                                                        child: Container(
                                                          width: MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .width *
                                                              0.8,
                                                          height: 200,
                                                          child:
                                                              const Doughnut(),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Container(
                                                  height: MediaQuery.of(context)
                                                          .size
                                                          .height *
                                                      0.2,
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      0.9,
                                                  color: const Color.fromARGB(
                                                      244, 33, 21, 21),
                                                  child: Column(
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .all(15.0),
                                                        child: Center(
                                                          child: ToggleSwitch(
                                                            fontSize: 16,
                                                            cornerRadius: 20,
                                                            animate: true,
                                                            animationDuration:
                                                                750,
                                                            radiusStyle: true,
                                                            minWidth: 100,
                                                            minHeight: 30,
                                                            activeBgColor: const [
                                                              Colors.white,
                                                            ],
                                                            activeFgColor:
                                                                Colors.black,
                                                            inactiveBgColor:
                                                                const Color
                                                                        .fromARGB(
                                                                    255,
                                                                    192,
                                                                    179,
                                                                    179),
                                                            totalSwitches: 2,
                                                            labels: const [
                                                              'Volume',
                                                              'Value',
                                                            ],
                                                            onToggle:
                                                                (index) {},
                                                          ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .only(
                                                                right: 8.0),
                                                        child: Container(
                                                          width: MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .width *
                                                              0.8,
                                                          height: 200,
                                                          child:
                                                              const Doughnut(),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Container(
                                                  height: MediaQuery.of(context)
                                                          .size
                                                          .height *
                                                      0.2,
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      0.9,
                                                  color: const Color.fromARGB(
                                                      244, 33, 21, 21),
                                                  child: Column(
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .all(15.0),
                                                        child: Center(
                                                          child: ToggleSwitch(
                                                            fontSize: 16,
                                                            cornerRadius: 20,
                                                            animate: true,
                                                            animationDuration:
                                                                750,
                                                            radiusStyle: true,
                                                            minWidth: 100,
                                                            minHeight: 30,
                                                            activeBgColor: const [
                                                              Colors.white,
                                                            ],
                                                            activeFgColor:
                                                                Colors.black,
                                                            inactiveBgColor:
                                                                const Color
                                                                        .fromARGB(
                                                                    255,
                                                                    192,
                                                                    179,
                                                                    179),
                                                            totalSwitches: 2,
                                                            labels: const [
                                                              'Volume',
                                                              'Value',
                                                            ],
                                                            onToggle:
                                                                (index) {},
                                                          ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .only(
                                                                right: 8.0),
                                                        child: Container(
                                                          width: MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .width *
                                                              0.8,
                                                          height: 200,
                                                          child:
                                                              const Doughnut(),
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                ),
                                              ]),
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
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.84,
                      height: MediaQuery.of(context).size.height * 0.11,
                      child: Row(
                        children: [
                          InkWell(
                            onTap: () {},
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  top: 8, bottom: 15, left: 5),
                              child: Container(
                                width: MediaQuery.of(context).size.width * 0.2,
                                child: Text(
                                  'Customer Profile',
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.albertSans(
                                      fontSize: 16, color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {},
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  top: 8, bottom: 15, left: 5),
                              child: Container(
                                width: MediaQuery.of(context).size.width * 0.18,
                                child: Text(
                                  'Banker Info',
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.albertSans(
                                      fontSize: 16, color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {},
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  top: 8, bottom: 15, left: 5),
                              child: Container(
                                width: MediaQuery.of(context).size.width * 0.22,
                                child: Text(
                                  'Pending Transaction',
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.albertSans(
                                      fontSize: 14, color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {},
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  top: 8, bottom: 15, left: 5),
                              child: Container(
                                width: MediaQuery.of(context).size.width * 0.18,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
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
                                    Text(
                                      'Alerts',
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.albertSans(
                                          fontSize: 14, color: Colors.white),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15.0),
            child: Container(
              decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: <Color>[
                      Color.fromARGB(129, 55, 48, 48),
                      Color.fromARGB(255, 42, 47, 42),
                      // Color.fromARGB(235, 65, 65, 58),
                    ],
                  ),
                  borderRadius: BorderRadius.circular(8)),
              child: ExpansionTile(
                leading: const Icon(Icons.arrow_drop_up),
                trailing: Container(
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
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(36),
                ),
                title: Center(
                  child: Text(
                    'General Motors',
                    style: GoogleFonts.albertSans(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
                children: <Widget>[
                  Container(
                    height: MediaQuery.of(context).size.height * 0.41,
                    width: MediaQuery.of(context).size.width * 0.88,
                    margin: const EdgeInsets.all(5),
                    child: ListView(
                      physics: const NeverScrollableScrollPhysics(),
                      children: [
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.6,
                          width: MediaQuery.of(context).size.width * 0.8,
                          child: ListView.builder(
                              physics: const NeverScrollableScrollPhysics(),
                              itemCount: 1,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (ctx, index) {
                                return Column(
                                  children: [
                                    Container(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.4,
                                      width: MediaQuery.of(context).size.width *
                                          0.9,
                                      child: Padding(
                                        padding:
                                            const EdgeInsets.only(left: 8.0),
                                        child: Container(
                                          // color: Colors.red,
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.99,
                                          decoration: BoxDecoration(
                                              color: const Color.fromARGB(
                                                  255, 33, 21, 21),
                                              borderRadius:
                                                  BorderRadius.circular(15)),
                                          child: DefaultTabController(
                                            length: 3,
                                            child: Scaffold(
                                              appBar: AppBar(
                                                toolbarHeight: 0.5,
                                                backgroundColor:
                                                    const Color.fromARGB(
                                                        244, 33, 21, 21),
                                                bottom: TabBar(
                                                  indicatorSize:
                                                      TabBarIndicatorSize.label,
                                                  indicatorColor: Colors.white,
                                                  tabs: [
                                                    Text(
                                                      'ACH',
                                                      style: GoogleFonts
                                                          .albertSans(
                                                              fontSize: 14),
                                                    ),
                                                    Text(
                                                      'Wires',
                                                      style: GoogleFonts
                                                          .albertSans(
                                                              fontSize: 14),
                                                    ),
                                                    Text(
                                                      'Instant Payments',
                                                      style: GoogleFonts
                                                          .albertSans(
                                                              fontSize: 14),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              body: TabBarView(children: [
                                                Container(
                                                  height: MediaQuery.of(context)
                                                          .size
                                                          .height *
                                                      0.2,
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      0.9,
                                                  color: const Color.fromARGB(
                                                      244, 33, 21, 21),
                                                  child: Column(
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .all(15.0),
                                                        child: Center(
                                                          child: ToggleSwitch(
                                                            fontSize: 16,
                                                            cornerRadius: 20,
                                                            animate: true,
                                                            animationDuration:
                                                                750,
                                                            radiusStyle: true,
                                                            minWidth: 100,
                                                            minHeight: 30,
                                                            activeBgColor: const [
                                                              Colors.white,
                                                            ],
                                                            activeFgColor:
                                                                Colors.black,
                                                            inactiveBgColor:
                                                                const Color
                                                                        .fromARGB(
                                                                    255,
                                                                    192,
                                                                    179,
                                                                    179),
                                                            totalSwitches: 2,
                                                            labels: const [
                                                              'Volume',
                                                              'Value',
                                                            ],
                                                            onToggle:
                                                                (index) {},
                                                          ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .only(
                                                                right: 8.0),
                                                        child: Container(
                                                          width: MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .width *
                                                              0.8,
                                                          height: 200,
                                                          child:
                                                              const Doughnut(),
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                ),
                                                Container(
                                                  height: MediaQuery.of(context)
                                                          .size
                                                          .height *
                                                      0.2,
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      0.9,
                                                  color: const Color.fromARGB(
                                                      244, 33, 21, 21),
                                                  child: Column(
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .all(15.0),
                                                        child: Center(
                                                          child: ToggleSwitch(
                                                            fontSize: 16,
                                                            cornerRadius: 20,
                                                            animate: true,
                                                            animationDuration:
                                                                750,
                                                            radiusStyle: true,
                                                            minWidth: 100,
                                                            minHeight: 30,
                                                            activeBgColor: const [
                                                              Colors.white,
                                                            ],
                                                            activeFgColor:
                                                                Colors.black,
                                                            inactiveBgColor:
                                                                const Color
                                                                        .fromARGB(
                                                                    255,
                                                                    192,
                                                                    179,
                                                                    179),
                                                            totalSwitches: 2,
                                                            labels: const [
                                                              'Volume',
                                                              'Value',
                                                            ],
                                                            onToggle:
                                                                (index) {},
                                                          ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .only(
                                                                right: 8.0),
                                                        child: Container(
                                                          width: MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .width *
                                                              0.8,
                                                          height: 200,
                                                          child:
                                                              const Doughnut(),
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                ),
                                                Container(
                                                  height: MediaQuery.of(context)
                                                          .size
                                                          .height *
                                                      0.2,
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      0.9,
                                                  color: const Color.fromARGB(
                                                      244, 33, 21, 21),
                                                  child: Column(
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .all(15.0),
                                                        child: Center(
                                                          child: ToggleSwitch(
                                                            fontSize: 16,
                                                            cornerRadius: 20,
                                                            animate: true,
                                                            animationDuration:
                                                                750,
                                                            radiusStyle: true,
                                                            minWidth: 100,
                                                            minHeight: 30,
                                                            activeBgColor: const [
                                                              Colors.white,
                                                            ],
                                                            activeFgColor:
                                                                Colors.black,
                                                            inactiveBgColor:
                                                                const Color
                                                                        .fromARGB(
                                                                    255,
                                                                    192,
                                                                    179,
                                                                    179),
                                                            totalSwitches: 2,
                                                            labels: const [
                                                              'Volume',
                                                              'Value',
                                                            ],
                                                            onToggle:
                                                                (index) {},
                                                          ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .only(
                                                                right: 8.0),
                                                        child: Container(
                                                          width: MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .width *
                                                              0.8,
                                                          height: 200,
                                                          child:
                                                              const Doughnut(),
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                ),
                                              ]),
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
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.84,
                      height: MediaQuery.of(context).size.height * 0.11,
                      child: Row(
                        children: [
                          InkWell(
                            onTap: () {},
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  top: 8, bottom: 15, left: 5),
                              child: Container(
                                width: MediaQuery.of(context).size.width * 0.2,
                                child: Text(
                                  'Customer Profile',
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.albertSans(
                                      fontSize: 16, color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {},
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  top: 8, bottom: 15, left: 5),
                              child: Container(
                                width: MediaQuery.of(context).size.width * 0.18,
                                child: Text(
                                  'Banker Info',
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.albertSans(
                                      fontSize: 16, color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {},
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  top: 8, bottom: 15, left: 5),
                              child: Container(
                                width: MediaQuery.of(context).size.width * 0.22,
                                child: Text(
                                  'Pending Transaction',
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.albertSans(
                                      fontSize: 14, color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {},
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  top: 8, bottom: 15, left: 5),
                              child: Container(
                                width: MediaQuery.of(context).size.width * 0.18,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
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
                                    Text(
                                      'Alerts',
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.albertSans(
                                          fontSize: 14, color: Colors.white),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
