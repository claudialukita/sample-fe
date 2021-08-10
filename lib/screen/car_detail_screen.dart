import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CarDetailScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => CarDetailState();
}

class CarDetailState extends State {
  Color _iconColor = Colors.transparent; //hanya penanda private property
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cars',
            style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontFamily: "Poppins",
                fontWeight: FontWeight.bold)),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: Navigator.of(context).pop,
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        actions: [
          CircleAvatar(
            backgroundColor: Colors.black,
            radius: 18,
            child: ClipOval(
              child: Padding(
                padding: EdgeInsets.all(8),
                child: Image.asset('assets/images/Beep_Beep_Avatar.png'),
              ),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            child: Image.asset('assets/images/Beep_Beep_Medium_Vehicle.png'),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.fromLTRB(30, 20, 30, 0),
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: new BorderRadius.only(
                  topLeft: const Radius.circular(40.0),
                  topRight: const Radius.circular(40.0),
                ),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: Text('Sport Car',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 39,
                                    fontFamily: "Poppins",
                                    fontWeight: FontWeight.bold)),
                          ),
                          Container(
                            child: Text(
                              '\$55/day',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 19,
                                fontFamily: "Poppins",
                              ),
                            ),
                          ),
                        ],
                      ),
                      Stack(
                        children: [
                          Container(
                            alignment: Alignment.topRight,
                            padding: EdgeInsets.fromLTRB(0, 15, 0, 0),
                            child: Image.asset(
                              'assets/images/Star_1.png',
                              width: 25,
                              height: 25,
                            ),
                          ),
                          InkWell(
                            child: Container(
                              alignment: Alignment.topRight,
                              padding: EdgeInsets.fromLTRB(0, 15, 0, 0),
                              child: Icon(Icons.star, color: _iconColor),
                            ),
                            onTap: () => {
                              if(_iconColor == Colors.yellow){
                                setState(() {
                                  _iconColor = Colors.transparent;
                                }),
                              } else {
                                setState(() {
                                  _iconColor = Colors.yellow;
                                }),
                              }

                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.fromLTRB(0, 18, 0, 0),
                    child: Text(
                      'Description',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 19,
                        fontFamily: "Poppins",
                      ),
                    ),
                  ),
                  SizedBox(height: 5), //margin
                  Container(
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                    child: Text(
                      'Wanna ride the coolest car in the world?',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontFamily: "Poppins",
                      ),
                    ),
                  ),
                  SizedBox(height: 10), //margin
                  ElevatedButton(
                    onPressed: () => {},
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      padding: EdgeInsets.fromLTRB(130, 16.5, 130, 16.5),
                    ),
                    child: Text(
                      'Book now',
                      style: TextStyle(
                        fontSize: 16,
                        fontFamily: "Poppins",
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
