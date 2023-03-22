import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pccmobile/screens/EMTSdashboard.dart';
import 'package:pccmobile/screens/wiresDashboard.dart';
import 'package:pccmobile/services/buildStream.dart';
import 'package:intl/intl.dart';

class Dashboard extends StatefulWidget {
  static const routeName = '/dashboard';
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  BuildStream b = BuildStream();
  var index = 0;
  final numberFormat = NumberFormat.currency(locale: 'en_US', symbol: '\$ ');
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
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
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
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            Text(
                              'Wires ICE US',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 16),
                            ),
                            Text(
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
                                  color: Color.fromARGB(255, 42, 106, 24),
                                  borderRadius: BorderRadius.circular(10)),
                              child: Row(
                                children: const <Widget>[
                                  Icon(
                                    Icons.check_circle_outline,
                                    color: Colors.white,
                                  ),
                                  Text('Completed',
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
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.white),
                            color: const Color.fromARGB(255, 47, 48, 46)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            const Text(
                              'ACH NOU 1',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 16),
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
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.white)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            Text(
                              'Wires ICE US',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 16),
                            ),
                            Text(
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
                                  color: Color.fromARGB(255, 42, 106, 24),
                                  borderRadius: BorderRadius.circular(10)),
                              child: Row(
                                children: const <Widget>[
                                  Icon(
                                    Icons.check_circle_outline,
                                    color: Colors.white,
                                  ),
                                  Text('Completed',
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
                              style:
                                  TextStyle(color: Colors.white, fontSize: 16),
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
                                  color:
                                      const Color.fromARGB(255, 205, 188, 38),
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
                // SizedBox(height: MediaQuery.of(context).size.height * 0.005),
                Row(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.921,
                      height: MediaQuery.of(context).size.height * 0.04,
                      // color: Colors.amber,
                      margin: const EdgeInsets.symmetric(vertical: 5),
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
                                      borderRadius: BorderRadius.circular(8)),
                                  height:
                                      MediaQuery.of(context).size.height * 0.04,
                                  width:
                                      MediaQuery.of(context).size.width * 0.2,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'EST - ',
                                        style: TextStyle(
                                            fontSize: 14, color: Colors.white),
                                      ),
                                      Text(
                                        '16:00',
                                        style: TextStyle(
                                            fontSize: 14, color: Colors.white),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  padding: const EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                      color: Color.fromARGB(255, 42, 106, 24),
                                      borderRadius: BorderRadius.circular(8)),
                                  height:
                                      MediaQuery.of(context).size.height * 0.04,
                                  width:
                                      MediaQuery.of(context).size.width * 0.2,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'PST - ',
                                        style: TextStyle(
                                            fontSize: 14, color: Colors.white),
                                      ),
                                      Text(
                                        '17:30',
                                        style: TextStyle(
                                            fontSize: 14, color: Colors.white),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  padding: const EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                      color: Color.fromARGB(255, 42, 106, 24),
                                      borderRadius: BorderRadius.circular(8)),
                                  height:
                                      MediaQuery.of(context).size.height * 0.04,
                                  width:
                                      MediaQuery.of(context).size.width * 0.2,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'MST - ',
                                        style: TextStyle(
                                            fontSize: 14, color: Colors.white),
                                      ),
                                      Text(
                                        '18:30',
                                        style: TextStyle(
                                            fontSize: 14, color: Colors.white),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  padding: const EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                      color: Color.fromARGB(255, 42, 106, 24),
                                      borderRadius: BorderRadius.circular(8)),
                                  height:
                                      MediaQuery.of(context).size.height * 0.04,
                                  width:
                                      MediaQuery.of(context).size.width * 0.2,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'CST - ',
                                        style: TextStyle(
                                            fontSize: 14, color: Colors.white),
                                      ),
                                      Text(
                                        '15:15',
                                        style: TextStyle(
                                            fontSize: 14, color: Colors.white),
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
                      child: GridTile(
                        header: Text(
                          'Current Fed Balance',
                          style: TextStyle(fontSize: 15, color: Colors.white),
                          textAlign: TextAlign.center,
                        ),
                        child: StreamBuilder<double>(
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
                            'Current CHIPS Balance',
                            style: TextStyle(fontSize: 15, color: Colors.white),
                            textAlign: TextAlign.center,
                          ),
                          child: StreamBuilder<double>(
                            stream: b.generateChipsBalance,
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
                                            fontSize: 42, color: Colors.white)),
                                  );
                                } else {
                                  return const Text('Empty data');
                                }
                              } else {
                                return Text(
                                    'State: ${snapshot.connectionState}');
                              }
                            },
                          )),
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
                        child: GridTile(
                            header: Text(
                              'Open Fed Balance',
                              style:
                                  TextStyle(fontSize: 15, color: Colors.white),
                              textAlign: TextAlign.center,
                            ),
                            child: StreamBuilder<double>(
                              stream: b.generateOpenFed,
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
                                              snapshot.data!
                                                  .toStringAsFixed(2) +
                                              ' B',
                                          style: TextStyle(
                                              fontSize: 38,
                                              color: Colors.white)),
                                    );
                                  } else {
                                    return const Text('Empty data');
                                  }
                                } else {
                                  return Text(
                                      'State: ${snapshot.connectionState}');
                                }
                              },
                            )),
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
                              'Net Debit Cap',
                              style:
                                  TextStyle(fontSize: 15, color: Colors.white),
                              textAlign: TextAlign.center,
                            ),
                            child: StreamBuilder<double>(
                              stream: b.generateDebitCap,
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
                                              snapshot.data!
                                                  .toStringAsFixed(2) +
                                              ' B',
                                          style: TextStyle(
                                              fontSize: 38,
                                              color: Colors.white)),
                                    );
                                  } else {
                                    return const Text('Empty data');
                                  }
                                } else {
                                  return Text(
                                      'State: ${snapshot.connectionState}');
                                }
                              },
                            )),
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
                    initiallyExpanded: true,
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
                                  style: TextStyle(
                                      color: Colors.red, fontSize: 26),
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
                                  style: TextStyle(
                                      color: Colors.red, fontSize: 26),
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
                    initiallyExpanded: true,
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
                                        color: Color.fromARGB(255, 196, 42, 31),
                                        borderRadius: BorderRadius.horizontal(
                                            left: Radius.circular(50),
                                            right: Radius.circular(50))),
                                    width: MediaQuery.of(context).size.width *
                                        0.45,
                                    child: const ListTile(
                                      leading: Icon(
                                          color: Colors.white,
                                          IconData(0xf659,
                                              fontFamily:
                                                  CupertinoIcons.iconFont,
                                              fontPackage: CupertinoIcons
                                                  .iconFontPackage)),
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
                                        color: Color.fromARGB(255, 42, 106, 24),
                                        borderRadius: BorderRadius.horizontal(
                                            left: Radius.circular(30),
                                            right: Radius.circular(30))),
                                    width: MediaQuery.of(context).size.width *
                                        0.45,
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
                                height:
                                    MediaQuery.of(context).size.height * 0.01),
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
                                        color: Color.fromARGB(255, 42, 106, 24),
                                        borderRadius: BorderRadius.horizontal(
                                            left: Radius.circular(30),
                                            right: Radius.circular(30))),
                                    width: MediaQuery.of(context).size.width *
                                        0.45,
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
                                      color: Color.fromARGB(255, 42, 106, 24),
                                      borderRadius: BorderRadius.horizontal(
                                          left: Radius.circular(30),
                                          right: Radius.circular(30))),
                                  width:
                                      MediaQuery.of(context).size.width * 0.45,
                                  child: const ListTile(
                                    leading: Icon(
                                      IconData(0xe159,
                                          fontFamily: 'MaterialIcons'),
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
                    initiallyExpanded: true,
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
                        height: 200,
                        margin: const EdgeInsets.all(5),
                        child: ListView(
                          // physics: const NeverScrollableScrollPhysics(),
                          children: [
                            Card(
                                color: Color.fromARGB(255, 47, 48, 46),
                                child: ListTile(
                                    title: Row(
                                  children: <Widget>[
                                    Text(
                                      'Wires',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 20),
                                    ),
                                    Spacer(),
                                    StreamBuilder<num>(
                                      stream: b.generateWire,
                                      builder: (
                                        BuildContext context,
                                        AsyncSnapshot<num> snapshot,
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
                                                '+ ' +
                                                    numberFormat
                                                        .format(snapshot.data!)
                                                        .toString(),
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 20),
                                              ),
                                            );
                                          } else {
                                            return const Text('Empty data');
                                          }
                                        } else {
                                          return Text(
                                              'State: ${snapshot.connectionState}');
                                        }
                                      },
                                    ),
                                  ],
                                ))),
                            Card(
                                color: Color.fromARGB(255, 47, 48, 46),
                                child: ListTile(
                                    title: Row(
                                  children: <Widget>[
                                    Text(
                                      'ACH',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 20),
                                    ),
                                    Spacer(),
                                    StreamBuilder<num>(
                                      stream: b.generateACH,
                                      builder: (
                                        BuildContext context,
                                        AsyncSnapshot<num> snapshot,
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
                                                '+ ' +
                                                    numberFormat
                                                        .format(snapshot.data!)
                                                        .toString(),
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 20),
                                              ),
                                            );
                                          } else {
                                            return const Text('Empty data');
                                          }
                                        } else {
                                          return Text(
                                              'State: ${snapshot.connectionState}');
                                        }
                                      },
                                    ),
                                  ],
                                ))),
                            Card(
                                color: Color.fromARGB(255, 47, 48, 46),
                                child: ListTile(
                                    title: Row(
                                  children: <Widget>[
                                    Text(
                                      'Checks',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 20),
                                    ),
                                    Spacer(),
                                    StreamBuilder<num>(
                                      stream: b.generateCheck,
                                      builder: (
                                        BuildContext context,
                                        AsyncSnapshot<num> snapshot,
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
                                                '+ ' +
                                                    numberFormat
                                                        .format(snapshot.data!)
                                                        .toString(),
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 20),
                                              ),
                                            );
                                          } else {
                                            return const Text('Empty data');
                                          }
                                        } else {
                                          return Text(
                                              'State: ${snapshot.connectionState}');
                                        }
                                      },
                                    ),
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
