import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Beepy',
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
              margin: EdgeInsets.fromLTRB(26, 37, 26, 0),
              child: Image.asset('assets/images/Beep_Beep_Drifting.png'),
            ),
            Container(
              width: 298,
              height: 101,
              margin: EdgeInsets.fromLTRB(38.5, 32, 38.5, 37),
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
                    margin: EdgeInsets.fromLTRB(17, 16, 17, 0),
                    child: Text('Find the perfect vehicle for every occasion!',
                        style: TextStyle(fontSize: 16, fontFamily: "Poppins"),
                        textAlign: TextAlign.center),
                  ),
                ],
              ),
            ),
            ConstrainedBox(
              constraints: BoxConstraints.tightFor(width: 315, height: 57),
              child: ElevatedButton(
                onPressed: () => {Navigator.pushNamed(context, '/CarDetail')},
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    primary: Color(0xFFFA7F35), //note
                    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                    textStyle: TextStyle(fontSize: 16, fontFamily: "Poppins")),
                child: Text('Continue'),
              ),
            ),
          ],
        ));
  }
}
