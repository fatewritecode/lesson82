import 'package:flutter/material.dart';
import 'package:lesson82/pages/page1.dart';
import 'package:lesson82/pages/page2.dart';

import 'package:lesson82/pages/pages3.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

// This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      initialRoute: '/A',
      routes: {
        '/A': (context) => const Page1(),
        '/B': (context) => const Page2(),
        '/C': (context) => const Page3(),
      },
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.pinkAccent),
        useMaterial3: true,
      ),
      home: const Page1(),
    );
  }
}
