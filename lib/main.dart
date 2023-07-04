import 'package:flutter/material.dart';
import 'screens/index_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Template',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light().copyWith(
        primaryColor: Colors.blueGrey,
        textTheme: TextTheme(
          headline1: TextStyle(
            fontFamily: 'NotoSans',
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
          headline2: TextStyle(
            fontFamily: 'NotoSans',
            fontSize: 15,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
          headline3: TextStyle(
            fontFamily: 'NotoSans',
            fontSize: 13,
            fontWeight: FontWeight.w900,
            color: Colors.white,
          ),
          //SMOOTHIESTORY TITLE
          headline4: TextStyle(
            fontFamily: 'QuickSand',
            fontSize: 18,
            fontWeight: FontWeight.w700,
            color: Colors.black,
          ),
          //SMOOTHIESTORY TITLE
          headline5: TextStyle(
            fontFamily: 'QuickSand',
            fontSize: 18,
            fontWeight: FontWeight.w700,
            color: Colors.orange,
          ),
          bodyText1: TextStyle(
            fontFamily: 'NotoSans',
            fontSize: 15,
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
          bodyText2: TextStyle(
            fontFamily: 'NotoSans',
            fontSize: 13,
            fontWeight: FontWeight.bold,
            color: Colors.black.withOpacity(0.6),
          ),
          button: TextStyle(
            fontFamily: 'NotoSans',
            fontSize: 13,
            fontWeight: FontWeight.bold,
            color: Colors.white54,
          ),
        ),
      ),
      home: IndexScreen(),
//      onGenerateRoute: (settings)
      routes: {
        IndexScreen.routeName: (ctx) => IndexScreen(),
      },
    );
  }
}
