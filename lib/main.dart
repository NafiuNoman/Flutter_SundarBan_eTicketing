import 'package:flutter/material.dart';
import 'package:my_sundarban/pages/one_day_tour/form_page.dart';
import 'package:my_sundarban/pages/splash_screen_page.dart';
import 'pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // textTheme: TextTheme(),
        primarySwatch: Colors.blue,
      ),
      //cant put Scaffold in the root because we need to change app bar in some pages
      //which part of the app will be same for all pages can only be put in the root
      home: const SafeArea(
          child: OneDayTourTicketFormPage(),
        ),

    );
  }
}
