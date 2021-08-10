import 'package:day1/model/is_liked_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


class CarsCardsScreen extends StatelessWidget {
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
      body: Container(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 56), //margin
              Stack(
                children: [
                  Container(
                    width: 306,
                    height: 143.5,
                    padding: EdgeInsets.all(20),
                    // alignment: Alignment.center,
                    margin: EdgeInsets.fromLTRB(0, 0, 0, 47.5),
                    decoration: BoxDecoration(
                      color: Color(0xFFB67853),
                      borderRadius: new BorderRadius.all(
                        Radius.circular(10.0),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          width: 266,
                          child: Text('Classic Car',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 24,
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.w600)),
                        ),
                        Container(
                          width: 266,
                          child: Text(
                            '\$55/day',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontFamily: "Poppins",
                            ),
                          ),
                        ),
                        Stack(
                          children: [
                            Container(
                              alignment: Alignment.bottomLeft,
                              padding: EdgeInsets.fromLTRB(0, 15, 0, 0),
                              child: Image.asset(
                                'assets/images/Star_1.png',
                                width: 28.5,
                                height: 28.5,
                              ),
                            ),
                            Container(
                              alignment: Alignment.bottomLeft,
                              padding: EdgeInsets.fromLTRB(0, 15, 0, 0),
                              child: Consumer(builder: (context, watch, child) {
                                final _isLiked = watch(isLikedModelProvider);
                                return GestureDetector(
                                  onTap: () => context
                                      .read(isLikedModelProvider.notifier)
                                      .handleFavorite(),
                                  child: Icon(
                                    Icons.star,
                                    size: 28.5,
                                    color: _isLiked
                                        ? Colors.yellow
                                        : Colors.transparent,
                                  ),
                                );
                              }),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 306,
                    height: 172,
                    alignment: Alignment.bottomRight,
                    child: Image.asset('assets/images/Vehicle_Classic_Car.png',
                        width: 200, height: 124),
                  ),
                ],
              ),
              Stack(
                children: [
                  Container(
                    width: 306,
                    height: 143.5,
                    padding: EdgeInsets.all(20),
                    // alignment: Alignment.center,
                    margin: EdgeInsets.fromLTRB(0, 0, 0, 47.5),
                    decoration: BoxDecoration(
                      color: Color(0xFF60B5F4),
                      borderRadius: new BorderRadius.all(
                        Radius.circular(10.0),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          width: 266,
                          child: Text('Sport Car',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 24,
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.w600)),
                        ),
                        Container(
                          width: 266,
                          child: Text(
                            '\$55/day',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontFamily: "Poppins",
                            ),
                          ),
                        ),
                        Stack(
                          children: [
                            Container(
                              alignment: Alignment.bottomLeft,
                              padding: EdgeInsets.fromLTRB(0, 15, 0, 0),
                              child: Image.asset(
                                'assets/images/Star_1.png',
                                width: 28.5,
                                height: 28.5,
                              ),
                            ),
                            Container(
                              alignment: Alignment.bottomLeft,
                              padding: EdgeInsets.fromLTRB(0, 15, 0, 0),
                              child: Consumer(builder: (context, watch, child) {
                                final _isLiked = watch(isLikedModelProvider);
                                return GestureDetector(
                                  onTap: () => context
                                      .read(isLikedModelProvider.notifier)
                                      .handleFavorite(),
                                  child: Icon(
                                    Icons.star,
                                    size: 28.5,
                                    color: _isLiked
                                        ? Colors.yellow
                                        : Colors.transparent,
                                  ),
                                );
                              }),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 306,
                    height: 172,
                    alignment: Alignment.bottomRight,
                    child: Image.asset('assets/images/Vehicle_Sport_Car.png',
                        width: 200, height: 124),
                  ),
                ],
              ),
              Stack(
                children: [
                  Container(
                    width: 306,
                    height: 143.5,
                    padding: EdgeInsets.all(20),
                    // alignment: Alignment.center,
                    margin: EdgeInsets.fromLTRB(0, 0, 0, 47.5),
                    decoration: BoxDecoration(
                      color: Color(0xFF8382C2),
                      borderRadius: new BorderRadius.all(
                        Radius.circular(10.0),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          width: 266,
                          child: Text('Flying Car',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 24,
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.w600)),
                        ),
                        Container(
                          width: 266,
                          child: Text(
                            '\$55/day',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontFamily: "Poppins",
                            ),
                          ),
                        ),
                        Stack(
                          children: [
                            Container(
                              alignment: Alignment.bottomLeft,
                              padding: EdgeInsets.fromLTRB(0, 15, 0, 0),
                              child: Image.asset(
                                'assets/images/Star_1.png',
                                width: 28.5,
                                height: 28.5,
                              ),
                            ),
                            Container(
                              alignment: Alignment.bottomLeft,
                              padding: EdgeInsets.fromLTRB(0, 15, 0, 0),
                              child: Consumer(builder: (context, watch, child) {
                                final _isLiked = watch(isLikedModelProvider);
                                return GestureDetector(
                                  onTap: () => context
                                      .read(isLikedModelProvider.notifier)
                                      .handleFavorite(),
                                  child: Icon(
                                    Icons.star,
                                    size: 28.5,
                                    color: _isLiked
                                        ? Colors.yellow
                                        : Colors.transparent,
                                  ),
                                );
                              }),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 306,
                    height: 172,
                    alignment: Alignment.bottomRight,
                    child: Image.asset('assets/images/Vehicle_Flying_Car.png',
                        width: 200, height: 124),
                  ),
                ],
              ),
              Stack(
                children: [
                  Container(
                    width: 306,
                    height: 143.5,
                    padding: EdgeInsets.all(20),
                    // alignment: Alignment.center,
                    margin: EdgeInsets.fromLTRB(0, 0, 0, 47.5),
                    decoration: BoxDecoration(
                      color: Color(0xFF2A3640),
                      borderRadius: new BorderRadius.all(
                        Radius.circular(10.0),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          width: 266,
                          child: Text('Electric Car',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 24,
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.w600)),
                        ),
                        Container(
                          width: 266,
                          child: Text(
                            '\$55/day',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontFamily: "Poppins",
                            ),
                          ),
                        ),
                        Stack(
                          children: [
                            Container(
                              alignment: Alignment.bottomLeft,
                              padding: EdgeInsets.fromLTRB(0, 15, 0, 0),
                              child: Image.asset(
                                'assets/images/Star_1.png',
                                width: 28.5,
                                height: 28.5,
                              ),
                            ),
                            Container(
                              alignment: Alignment.bottomLeft,
                              padding: EdgeInsets.fromLTRB(0, 15, 0, 0),
                              child: Consumer(builder: (context, watch, child) {
                                final _isLiked = watch(isLikedModelProvider);
                                return GestureDetector(
                                  onTap: () => context
                                      .read(isLikedModelProvider.notifier)
                                      .handleFavorite(),
                                  child: Icon(
                                    Icons.star,
                                    size: 28.5,
                                    color: _isLiked
                                        ? Colors.yellow
                                        : Colors.transparent,
                                  ),
                                );
                              }),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 306,
                    height: 172,
                    alignment: Alignment.bottomRight,
                    child: Image.asset('assets/images/Vehicle_Electric_Car.png',
                        width: 200, height: 124),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
