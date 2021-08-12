import 'package:day1/model/car.dart';
import 'package:day1/model/is_liked_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CarDetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final car = ModalRoute.of(context)!.settings.arguments as Car;
    return Scaffold(
      appBar: AppBar(
        title: Text('Cars',
            style: TextStyle(
                fontSize: 20,
                fontFamily: "Poppins",
                fontWeight: FontWeight.bold)),
        centerTitle: true,
        elevation: 0,
        leading: IconButton(
          onPressed: Navigator.of(context).pop,
          icon: Icon(
            Icons.arrow_back_ios,
            color: Theme.of(context).iconTheme.color,
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
            child: Image.asset(car.image, width: 375, height: 288.33),

          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.fromLTRB(30, 20, 30, 0),
              decoration: BoxDecoration(
                color: car.color,
                borderRadius: new BorderRadius.only(
                  topLeft: const Radius.circular(40.0),
                  topRight: const Radius.circular(40.0),
                ),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 250,
                            child: Text(car.name,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 39,
                                    fontFamily: "Poppins",
                                    fontWeight: FontWeight.bold)),
                          ),
                          Container(
                            child: Text(
                              car.price,
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
                            padding: EdgeInsets.fromLTRB(32, 15, 0, 0),
                            child: Image.asset(
                              'assets/images/Star_1.png',
                              width: 33.51,
                              height: 33.51,
                            ),
                          ),
                          Container(
                            alignment: Alignment.topRight,
                            padding: EdgeInsets.fromLTRB(32, 15, 0, 0),
                            child: Consumer(builder: (context, watch, child) {
                              final _isLiked = watch(isLikedModelProvider);
                              return GestureDetector(
                                onTap: () => context
                                    .read(isLikedModelProvider.notifier)
                                    .handleFavorite(),
                                child: Icon(
                                  Icons.star,
                                  size: 33.51,
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
                  Container(
                    width: 315,
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
                    padding: EdgeInsets.fromLTRB(18, 0, 0, 0),
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
                  ConstrainedBox(
                    constraints:
                        BoxConstraints.tightFor(width: 315, height: 57),
                    child: ElevatedButton(
                      onPressed: () => {},
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
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
