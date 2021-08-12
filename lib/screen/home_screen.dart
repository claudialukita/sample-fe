import 'package:day1/model/home_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// class HomeScreen extends StatefulWidget{
//   @override
//   State<StatefulWidget> createState() => HomeState();
//
// }

class HomeScreen extends StatelessWidget {
  // bool status = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Beepy',
            style: TextStyle(
              fontSize: 20,
              fontFamily: "Poppins",
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
          elevation: 0,
        ),
        body: Column(
          children: [
            Container(
              width: 427,
              height: 319,
              margin: EdgeInsets.fromLTRB(26, 27, 26, 0),
              child: Image.asset('assets/images/Beep_Beep_Drifting.png'),
            ),
            Container(
              width: 298,
              height: 101,
              margin: EdgeInsets.fromLTRB(38.5, 12, 38.5, 15),
              child: Column(
                children: [
                  Container(
                    child: Text(
                      'Find Your Vehicle',
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(17, 6, 17, 0),
                    child: Text('Find the perfect vehicle for every occasion!',
                        style: Theme.of(context).textTheme.bodyText2,
                        textAlign: TextAlign.center),
                  ),
                ],
              ),
            ),
            Container(
              child: Consumer(builder: (context, watch, child) {
                final _isOn = watch(homeModelProvider);
                return FlutterSwitch(
                  width: 40.0,
                  height: 24.0,
                  valueFontSize: 25.0,
                  toggleSize: 24,
                  activeColor: Color(0xFFEB5757),
                  inactiveColor: Color(0xFFDBDBDB),
                  switchBorder: Border.all(color: Colors.black),
                  toggleBorder: Border.all(color: Colors.black),
                  borderRadius: 40.0,
                  padding: 0,
                  onToggle: (val) =>
                      context.read(homeModelProvider.notifier).handleToggle(),
                  value: _isOn ? true : false,
                );
              }),
            ),

            SizedBox(height: 15), //margin
            ConstrainedBox(
              constraints: BoxConstraints.tightFor(width: 305, height: 57),
              child: ElevatedButton(
                onPressed: () => {Navigator.pushNamed(context, '/CarsCard')},
                style: Theme.of(context).elevatedButtonTheme.style,
                child: Text('Continue'),
              ),
            ),
          ],
        ));
  }
}
