import 'package:flutter/material.dart';

import 'home_screen.dart';
class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Live-Test_3',
      home: HomeScreen(),
      theme: ThemeData(
        appBarTheme:AppBarTheme(
          backgroundColor: Colors.blueGrey,
          centerTitle: true,
          foregroundColor: Colors.white,
        ),
        inputDecorationTheme: InputDecorationThemeData(
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10)
            )
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blueGrey,
            foregroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10)
            )
          )
        )
      ),
    );
  }
}
