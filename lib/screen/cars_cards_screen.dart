import 'package:day1/view_model/car_view_model.dart';
import 'package:day1/view_model/favorite_view_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CarsCardsScreen extends ConsumerWidget {
  @override
  Widget build(BuildContext context, watch) {
    final cars = watch(carsViewModelProvider);
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
      body: Container(
        // width: double.infinity,
        child: ListView.builder(
          shrinkWrap: true,
          itemCount: cars.length,
          itemBuilder: (context, index) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Stack(
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 0, 0, 47.5),
                      child: ConstrainedBox(
                        constraints:
                            BoxConstraints.tightFor(width: 306, height: 143.5),
                        child: ElevatedButton(
                          onPressed: () => {
                            Navigator.pushNamed(context, '/CarDetail',
                                arguments: cars[index])
                          },
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            padding: EdgeInsets.all(20),
                            primary: cars[index].color,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                width: 266,
                                child: Text(cars[index].name,
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 24,
                                        fontFamily: "Poppins",
                                        fontWeight: FontWeight.w600)),
                              ),
                              Container(
                                width: 266,
                                child: Text(
                                  cars[index].price,
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
                                    child: Consumer(
                                        builder: (context, watch, child) {
                                      final isLiked =
                                          watch(favoriteViewModelProvider);
                                      return GestureDetector(
                                        onTap: () => context
                                            .read(favoriteViewModelProvider
                                                .notifier)
                                            .handlingFav(index),
                                        child: Icon(
                                          Icons.star,
                                          size: 28.5,
                                          color: isLiked[index].isLiked
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
                      ),
                    ),
                    Container(
                      width: 306,
                      height: 172,
                      alignment: Alignment.bottomRight,
                      child: Image.asset(cars[index].image,
                          width: 200, height: 124),
                    ),
                  ],
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
