import 'package:app/signup/signup.dart';
import 'package:flutter/material.dart';

import 'auth/auth_page.dart';
import 'home/home_page.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          brightness: Brightness.light,
          primarySwatch: Colors.purple,
          accentColor: Colors.amberAccent,
          buttonColor: Colors.pink),
      // home: AuthPage(),  this is replaced by routes '/'
      routes: {
        '/': (BuildContext context) => AuthPage(),
        '/home': (BuildContext context) => HomePage(),
        '/signup': (BuildContext context) => Signup(),
        //   '/uploaddoc': (BuildContext context) => UploadDoc(),
      },
    );
  }
}
