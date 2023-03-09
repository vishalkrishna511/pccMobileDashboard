import 'package:flutter/material.dart';
import 'package:pccmobile/screens/dashboard.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:pccmobile/screens/wiresDashboard.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          textTheme:
              GoogleFonts.sourceSansProTextTheme(Theme.of(context).textTheme)),
      debugShowCheckedModeBanner: false,
      home: const Dashboard(),
    );
  }
}
