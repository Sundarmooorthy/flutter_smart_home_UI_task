import 'package:flutter/material.dart';
import 'package:smart_home/Pages/home_page.dart';
import 'package:smart_home/Widgets/TabBarViewCards/tab_bar_view_card.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:
           HomePage(),
          // TabBarCard(),
    );
  }
}
