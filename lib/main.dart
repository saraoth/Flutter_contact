import 'package:flutter/material.dart';

import 'screens/contact_screen.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
      title: 'Contacts',
      home: ContactScreen(),

      initialRoute:ContactScreen.routeName ,

      routes:
      {
          ContactScreen.routeName: (_) => ContactScreen(),
        }
        );



  }
}