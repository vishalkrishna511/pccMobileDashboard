import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pccmobile/screens/EMTSdashboard.dart';
import 'package:pccmobile/screens/wiresDashboard.dart';

class Dashboard extends StatefulWidget {
  static const routeName = '/dashboard';
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
        title: Center(
          child: Text(
            'BANK OVERVIEW',
            style: GoogleFonts.albertSans(
                fontSize: 16, fontWeight: FontWeight.bold),
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
          child: Column(children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height * 0.11,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.white),
                        borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(10),
                            bottomLeft: Radius.circular(10))),
                    child: Column(
                      children: const <Widget>[
                        Text(
                          'Wires ICE US',
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                        Text(
                          '9:30 AM ET',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Completed',
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.white),
                        color: const Color.fromARGB(255, 47, 48, 46)),
                    child: Column(
                      children: <Widget>[
                        const Text(
                          'ACH NOU 1',
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                        const Text(
                          '9:30 AM ET',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 5, vertical: 1),
                          // width: MediaQuery.of(context).size.width * 0.15,
                          decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(10)),
                          child: Row(
                            children: const <Widget>[
                              Icon(
                                  color: Colors.white,
                                  IconData(0xee2d,
                                      fontFamily: 'MaterialIcons')),
                              Text('2min',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 16))
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration:
                        BoxDecoration(border: Border.all(color: Colors.white)),
                    child: Column(
                      children: const <Widget>[
                        Text(
                          'Wires ICE US',
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                        Text(
                          '9:30 AM ET',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Completed',
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 47, 48, 46),
                        border: Border.all(color: Colors.white),
                        borderRadius: const BorderRadius.only(
                            topRight: Radius.circular(10),
                            bottomRight: Radius.circular(10))),
                    child: Column(
                      children: <Widget>[
                        const Text(
                          'Wires ICE US',
                          style: TextStyle(color: Colors.white, fontSize: 14),
                        ),
                        const Text(
                          '10:30 AM ET',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 5, vertical: 1),
                          // width: MediaQuery.of(context).size.width * 0.15,
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 205, 188, 38),
                              borderRadius: BorderRadius.circular(10)),
                          child: Row(
                            children: const <Widget>[
                              Icon(
                                  color: Colors.white,
                                  IconData(0xee2d,
                                      fontFamily: 'MaterialIcons')),
                              Text('2min',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 14))
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.015),
            Row(
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
                  borderRadius: BorderRadius.all(Radius.circular(8))),
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
                      children: const [
                        Card(
                          color: Color.fromARGB(255, 47, 48, 46),
                          child: ListTile(
                            title: Text(
                              'Wires E-CUR Rate',
                              style: TextStyle(color: Colors.white),
                            ),
                            subtitle: Text(
                              '5:00 AM ET',
                              style: TextStyle(color: Colors.white),
                            ),
                            trailing: Text(
                              '2 mins',
                              style: TextStyle(color: Colors.red, fontSize: 26),
                            ),
                          ),
                        ),
                        Card(
                          color: Color.fromARGB(255, 47, 48, 46),
                          child: ListTile(
                            title: Text(
                              'Wires G-CUR Rate',
                              style: TextStyle(color: Colors.white),
                            ),
                            subtitle: Text(
                              '5:10 AM ET',
                              style: TextStyle(color: Colors.white),
                            ),
                            trailing: Text(
                              '12 mins',
                              style: TextStyle(color: Colors.red, fontSize: 26),
                            ),
                          ),
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
                  borderRadius: BorderRadius.all(Radius.circular(8))),
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
                  'Payment Rail Health Status',
                  style: TextStyle(fontSize: 22, color: Colors.white),
                ),
                children: <Widget>[
                  Container(
                    padding: const EdgeInsets.all(5),
                    child: Column(
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            InkWell(
                              onTap: () => {
                                Navigator.of(context).pushNamed(
                                    WiresDashboard.routeName,
                                    arguments: {'rail': 'EMTS'})
                              },
                              child: Container(
                                decoration: const BoxDecoration(
                                    color: Colors.red,
                                    borderRadius: BorderRadius.horizontal(
                                        left: Radius.circular(50),
                                        right: Radius.circular(50))),
                                width: MediaQuery.of(context).size.width * 0.45,
                                child: const ListTile(
                                  leading: Icon(
                                      color: Colors.white,
                                      IconData(0xf659,
                                          fontFamily: CupertinoIcons.iconFont,
                                          fontPackage:
                                              CupertinoIcons.iconFontPackage)),
                                  title: Text(
                                    'EMTS',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: () => {
                                Navigator.of(context).pushNamed(
                                    WiresDashboard.routeName,
                                    arguments: {'rail': 'GMTS'})
                              },
                              child: Container(
                                decoration: const BoxDecoration(
                                    color: Colors.green,
                                    borderRadius: BorderRadius.horizontal(
                                        left: Radius.circular(30),
                                        right: Radius.circular(30))),
                                width: MediaQuery.of(context).size.width * 0.45,
                                child: const ListTile(
                                  leading: Icon(
                                    IconData(0xe159,
                                        fontFamily: 'MaterialIcons'),
                                    color: Colors.white,
                                  ),
                                  title: Text(
                                    'GMTS',
                                    style: TextStyle(color: Colors.white),
                                  ),
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
                            InkWell(
                              onTap: () => {
                                Navigator.of(context).pushNamed(
                                    WiresDashboard.routeName,
                                    arguments: {'rail': 'EPE'})
                              },
                              child: Container(
                                decoration: const BoxDecoration(
                                    color: Colors.green,
                                    borderRadius: BorderRadius.horizontal(
                                        left: Radius.circular(30),
                                        right: Radius.circular(30))),
                                width: MediaQuery.of(context).size.width * 0.45,
                                child: const ListTile(
                                  leading: Icon(
                                    IconData(0xe159,
                                        fontFamily: 'MaterialIcons'),
                                    color: Colors.white,
                                  ),
                                  title: Text(
                                    'EPE',
                                    style: TextStyle(color: Colors.white),
                                  ),
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
                                  IconData(0xe159, fontFamily: 'MaterialIcons'),
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
                  borderRadius: BorderRadius.all(Radius.circular(8))),
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
                    height: 130,
                    margin: const EdgeInsets.all(5),
                    child: ListView(
                      physics: const NeverScrollableScrollPhysics(),
                      children: [
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Container(
                                  padding: const EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                      color: Color.fromARGB(255, 42, 106, 24),
                                      borderRadius: BorderRadius.circular(7)),
                                  height:
                                      MediaQuery.of(context).size.height * 0.06,
                                  width:
                                      MediaQuery.of(context).size.width * 0.45,
                                  child: const Center(
                                      child: Text(
                                    'EST - 16:00',
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.white),
                                  ))),
                              Container(
                                  padding: const EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                      color: Color.fromARGB(255, 42, 106, 24),
                                      borderRadius: BorderRadius.circular(7)),
                                  height:
                                      MediaQuery.of(context).size.height * 0.06,
                                  width:
                                      MediaQuery.of(context).size.width * 0.45,
                                  child: const Center(
                                      child: Text(
                                    'PST - 17:30',
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.white),
                                  ))),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.015,
                        ),
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Container(
                                  padding: const EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                      color: Color.fromARGB(255, 42, 106, 24),
                                      borderRadius: BorderRadius.circular(7)),
                                  height:
                                      MediaQuery.of(context).size.height * 0.06,
                                  width:
                                      MediaQuery.of(context).size.width * 0.45,
                                  child: const Center(
                                      child: Text(
                                    'CST - 15:15',
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.white),
                                  ))),
                              Container(
                                  padding: const EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                      color: Color.fromARGB(255, 42, 106, 24),
                                      borderRadius: BorderRadius.circular(7)),
                                  height:
                                      MediaQuery.of(context).size.height * 0.06,
                                  width:
                                      MediaQuery.of(context).size.width * 0.45,
                                  child: const Center(
                                      child: Text(
                                    'MST - 18:30',
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.white),
                                  ))),
                            ],
                          ),
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
                  borderRadius: BorderRadius.all(Radius.circular(8))),
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
                  'Product Balance',
                  style: TextStyle(fontSize: 22, color: Colors.white),
                ),
                children: <Widget>[
                  Container(
                    width: 400,
                    height: 150,
                    margin: const EdgeInsets.all(5),
                    child: ListView(
                      // physics: const NeverScrollableScrollPhysics(),
                      children: [
                        Card(
                            color: Color.fromARGB(255, 47, 48, 46),
                            child: ListTile(
                                title: Row(
                              children: const <Widget>[
                                Text(
                                  'Wires',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20),
                                ),
                                Spacer(),
                                Text(
                                  '+ 13,966,145,958',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20),
                                )
                              ],
                            ))),
                        Card(
                            color: Color.fromARGB(255, 47, 48, 46),
                            child: ListTile(
                                title: Row(
                              children: const <Widget>[
                                Text(
                                  'ACH',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20),
                                ),
                                Spacer(),
                                Text(
                                  '+ 2,834,161,450',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20),
                                )
                              ],
                            ))),
                        Card(
                            color: Color.fromARGB(255, 47, 48, 46),
                            child: ListTile(
                                title: Row(
                              children: const <Widget>[
                                Text(
                                  'Checks',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20),
                                ),
                                Spacer(),
                                Text(
                                  '+ 3,069,655,561',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20),
                                )
                              ],
                            ))),
                      ],
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
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "HOME"),
          BottomNavigationBarItem(icon: Icon(Icons.warning), label: "ALERTS"),
          BottomNavigationBarItem(
              icon: Icon(Icons.graphic_eq_outlined), label: "WIRES"),
        ],
        currentIndex: index,
        onTap: (int index) {
          switch (index) {
            case 2:
              Navigator.of(context).pushNamed(WiresDashboard.routeName);
              break;
          }
        },
      ),
    );
  }
}
