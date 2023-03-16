import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pccmobile/screens/channels.dart';
import 'package:pccmobile/screens/customers.dart';
import 'package:pccmobile/screens/dashboard.dart';
import 'package:pccmobile/screens/doughnut.dart';

import 'package:pccmobile/screens/wiresDashboard.dart';
import 'package:semicircle_indicator/semicircle_indicator.dart';
import 'package:toggle_switch/toggle_switch.dart';

class EMTSDashboard extends StatefulWidget {
  const EMTSDashboard({super.key});

  @override
  State<EMTSDashboard> createState() => _EMTSDashboardState();
}

class _EMTSDashboardState extends State<EMTSDashboard> {
  @override
  Widget build(BuildContext context) {
    var index = 2;
    var dropCount = 0;
    final List<bool> _key = <bool>[true, false];
    return DefaultTabController(
      length: 3,
      child: Scaffold(
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
                    builder: (BuildContext context) => const WiresDashboard(),
                  ),
                ),
              ),
              const Spacer(),
            ],
          ),
          title: Center(
            child: Text(
              'EMTS INITIATING CLEARING',
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
          bottom: const TabBar(
              indicatorColor: Colors.amber,
              indicatorSize: TabBarIndicatorSize.label,
              tabs: [
                Tab(
                  text: 'Customers',
                ),
                Tab(
                  text: 'Channels',
                )
              ]),
        ),
        body: TabBarView(
          children: <Widget>[
            CustomerScreen(),
            Container(
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
              child: ChannelsScreen(),
            ),
          ],
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
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => const Dashboard(),
                  ),
                );
                break;
            }
          },
        ),
      ),
    );
  }
}
