import 'package:flutter/material.dart';

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
      body: Container(
        padding: EdgeInsets.all(10),
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/1.jpg'), fit: BoxFit.cover)),
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
            )
          ]),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color.fromARGB(255, 68, 80, 88),
        selectedItemColor: Colors.yellow,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.warning), label: "ALERTS"),
          BottomNavigationBarItem(
              icon: Icon(Icons.graphic_eq_outlined), label: "STATS"),
        ],
        currentIndex: index,
        onTap: (int i) {
          setState(() {
            index = i;
          });
        },
      ),
    );
  }
}
