import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pccmobile/screens/wiresDashboard.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  var index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Row(
          children: const [
            Spacer(),
          ],
        ),
        title: const Center(
          child: Text(
            'BANK OVERVIEW',
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 8.0),
            child: Icon(Icons.access_alarms),
          ),
          Padding(
            padding: EdgeInsets.only(right: 8.0),
            child: Icon(Icons.notification_important),
          )
        ],
        backgroundColor: Color.fromRGBO(65, 65, 58, 0.922),
        elevation: 0,
      ),
      body: Container(
        padding: EdgeInsets.all(10),
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
          child: Column(children: <Widget>[
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
                    child: const GridTile(
                      header: Text(
                        'Current Fed Balance',
                        style: TextStyle(fontSize: 15, color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          '\$ 74.5 B',
                          style: TextStyle(fontSize: 44, color: Colors.white),
                        ),
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
                    child: const GridTile(
                      header: Text(
                        'Current CHIPS Balance',
                        style: TextStyle(fontSize: 15, color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          '\$ 6.34 B',
                          style: TextStyle(fontSize: 44, color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 75, 185, 236),
                        borderRadius: BorderRadius.circular(7)),
                    height: MediaQuery.of(context).size.height * 0.13,
                    width: MediaQuery.of(context).size.width * 0.45,
                    child: const GridTile(
                      header: Text(
                        'Open Fed Balance',
                        style: TextStyle(fontSize: 15, color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          '\$ 71.5 B',
                          style: TextStyle(fontSize: 44, color: Colors.white),
                        ),
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
                    child: const GridTile(
                      header: Text(
                        'Net Debit Cap',
                        style: TextStyle(fontSize: 15, color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          '\$ 69.1 B',
                          style: TextStyle(fontSize: 44, color: Colors.white),
                        ),
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
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: <Color>[
                    Color.fromARGB(255, 78, 72, 72),
                    Color.fromARGB(255, 47, 48, 46),
                    // Color.fromARGB(235, 65, 65, 58),
                  ],
                ),
              ),
              child: ExpansionTile(
                leading: const Icon(
                  Icons.arrow_drop_down_circle_outlined,
                  color: Colors.white,
                ),
                trailing: const SizedBox(),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18),
                ),
                title: const Text(
                  'Payment Rail Health Status',
                  style: TextStyle(fontSize: 22, color: Colors.white),
                ),
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.all(5),
                    child: Column(
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Container(
                              decoration: const BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.horizontal(
                                      left: Radius.circular(50),
                                      right: Radius.circular(50))),
                              width: MediaQuery.of(context).size.width * 0.45,
                              child: const ListTile(
                                leading: Icon(IconData(0xf655,
                                    fontFamily: CupertinoIcons.iconFont,
                                    fontPackage:
                                        CupertinoIcons.iconFontPackage)),
                                title: Text(
                                  'EMTS',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ),
                            Container(
                              decoration: const BoxDecoration(
                                  color: Colors.green,
                                  borderRadius: BorderRadius.horizontal(
                                      left: Radius.circular(30),
                                      right: Radius.circular(30))),
                              width: MediaQuery.of(context).size.width * 0.45,
                              child: const ListTile(
                                leading: Icon(
                                  IconData(0xe156, fontFamily: 'MaterialIcons'),
                                  color: Colors.white,
                                ),
                                title: Text(
                                  'GMTS',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.01),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Container(
                              decoration: const BoxDecoration(
                                  color: Colors.green,
                                  borderRadius: BorderRadius.horizontal(
                                      left: Radius.circular(30),
                                      right: Radius.circular(30))),
                              width: MediaQuery.of(context).size.width * 0.45,
                              child: const ListTile(
                                leading: Icon(
                                  IconData(0xe156, fontFamily: 'MaterialIcons'),
                                  color: Colors.white,
                                ),
                                title: Text(
                                  'EPE',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ),
                            Container(
                              decoration: const BoxDecoration(
                                  color: Colors.green,
                                  borderRadius: BorderRadius.horizontal(
                                      left: Radius.circular(30),
                                      right: Radius.circular(30))),
                              width: MediaQuery.of(context).size.width * 0.45,
                              child: const ListTile(
                                leading: Icon(
                                  IconData(0xe156, fontFamily: 'MaterialIcons'),
                                  color: Colors.white,
                                ),
                                title: Text(
                                  'ACH',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.015,
            ),
            Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: <Color>[
                    Color.fromARGB(255, 78, 72, 72),
                    Color.fromARGB(255, 47, 48, 46),
                    // Color.fromARGB(235, 65, 65, 58),
                  ],
                ),
              ),
              child: ExpansionTile(
                leading: const Icon(
                  Icons.arrow_drop_down,
                  color: Colors.white,
                ),
                trailing: const SizedBox(),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18),
                ),
                title: const Text(
                  'Time Information',
                  style: TextStyle(fontSize: 22, color: Colors.white),
                ),
                children: <Widget>[
                  Container(
                    width: 400,
                    height: 150,
                    margin: const EdgeInsets.all(5),
                    child: ListView(
                      physics: const NeverScrollableScrollPhysics(),
                      children: [],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.015,
            ),
            Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: <Color>[
                    Color.fromARGB(255, 78, 72, 72),
                    Color.fromARGB(255, 47, 48, 46),
                    // Color.fromARGB(235, 65, 65, 58),
                  ],
                ),
              ),
              child: ExpansionTile(
                leading: const Icon(
                  Icons.arrow_drop_down,
                  color: Colors.white,
                ),
                trailing: const SizedBox(),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18),
                ),
                title: const Text(
                  'Balance',
                  style: TextStyle(fontSize: 22, color: Colors.white),
                ),
                children: <Widget>[
                  Container(
                    width: 400,
                    height: 150,
                    margin: const EdgeInsets.all(5),
                    child: ListView(
                      physics: const NeverScrollableScrollPhysics(),
                      children: [],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.015,
            ),
            Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: <Color>[
                    Color.fromARGB(255, 78, 72, 72),
                    Color.fromARGB(255, 47, 48, 46),
                    // Color.fromARGB(235, 65, 65, 58),
                  ],
                ),
              ),
              child: ExpansionTile(
                leading: const Icon(
                  Icons.arrow_drop_down,
                  color: Colors.white,
                ),
                trailing: const SizedBox(),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18),
                ),
                title: const Text(
                  'Pending Transactions',
                  style: TextStyle(fontSize: 22, color: Colors.white),
                ),
                children: <Widget>[
                  Container(
                    width: 400,
                    height: 150,
                    margin: const EdgeInsets.all(5),
                    child: ListView(
                      physics: const NeverScrollableScrollPhysics(),
                      children: [],
                    ),
                  ),
                ],
              ),
            ),
          ]),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color.fromARGB(255, 47, 48, 46),
        selectedItemColor: Colors.yellow,
        unselectedItemColor: Colors.white,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.warning), label: "ALERTS"),
          BottomNavigationBarItem(
              icon: Icon(Icons.graphic_eq_outlined), label: "STATS"),
        ],
        currentIndex: index,
        onTap: (int index) {
          switch (index) {
            case 2:
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) => const WiresDashboard(),
                ),
              );
              break;
          }
        },
      ),
    );
  }
}
