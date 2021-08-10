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
              color: Colors.black,
              fontSize: 20,
              fontFamily: "Poppins",
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.white,
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
                    child: Text('Find Your Vehicle',
                        style: TextStyle(
                            fontSize: 24,
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w600)),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(17, 6, 17, 0),
                    child: Text('Find the perfect vehicle for every occasion!',
                        style: TextStyle(fontSize: 16, fontFamily: "Poppins"),
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
                  activeColor: Colors.white,
                  inactiveColor: Colors.white,
                  switchBorder: Border.all(color: Colors.black),
                  toggleBorder: Border.all(color: Colors.black),
                  // value: status,
                  borderRadius: 40.0,
                  padding: 0,
                  onToggle: (val) =>
                  context
                      .read(homeModelProvider.notifier)
                      .handleToggle(),
                  value: _isOn ? true : false,

                  // {
                  //   setState(() {
                  //     status = val;
                  //   });
                  // },
                );
              }),
            ),

            SizedBox(height: 15), //margin
            ConstrainedBox(
              constraints: BoxConstraints.tightFor(width: 305, height: 57),
              child: ElevatedButton(
                onPressed: () => {Navigator.pushNamed(context, '/CarsCard')},
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    primary: Color(0xFFFA7F35),
                    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                    textStyle: TextStyle(fontSize: 16, fontFamily: "Poppins")),
                child: Text('Continue'),
              ),
            ),
          ],
        ));
  }
}
