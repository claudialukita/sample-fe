import 'package:day1/screen/car_detail_screen.dart';
import 'package:day1/screen/cars_cards_screen.dart';
import 'package:day1/screen/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'model/home_model.dart';

void main() {
  // runApp(const MyApp());
  runApp(ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  // const MyApp({Key? key}) : super(key: key);

  final darkTheme = ThemeData(
    primaryColor: Color(0xFF191D21),
    scaffoldBackgroundColor: Color(0xFF191D21),
    fontFamily: 'poppins',
    textTheme: TextTheme(
      headline1: TextStyle(fontSize: 4, fontWeight: FontWeight.w600),
      bodyText1: TextStyle(
          fontSize: 24, fontWeight: FontWeight.w600, color: Color(0xFFFFFFFF)),
      bodyText2: TextStyle(fontSize: 16, color: Color(0xFFFFFFFF)),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        primary: Color(0xFF1814E4),
        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      ),
    ),
    iconTheme: IconThemeData(
      color: Colors.white,
    ),
  );

  final lightTheme = ThemeData(
    primaryColor: Color(0xFFFFFFFF),
    scaffoldBackgroundColor: Color(0xFFFFFFFF),
    fontFamily: 'poppins',
    textTheme: TextTheme(
      headline1: TextStyle(fontSize: 4, fontWeight: FontWeight.w600),
      bodyText1: TextStyle(
          fontSize: 24, fontWeight: FontWeight.w600, color: Color(0xFF000000)),
      bodyText2: TextStyle(fontSize: 16, color: Color(0xFF000000)),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        primary: Color(0xFFFA7F35),
        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      ),
    ),
    iconTheme: IconThemeData(
      color: Colors.black,
    ),
  );

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (builder, watch, child) {
      final _isOn = watch(homeModelProvider);
      return MaterialApp(
        title: 'Flutter Demo',
        theme: _isOn ? darkTheme : lightTheme,
        initialRoute: '/',
        routes: {
          '/': (context) => HomeScreen(),
          '/CarDetail': (context) => CarDetailScreen(),
          '/CarsCard': (context) => CarsCardsScreen(),
        },
      );
    });
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
