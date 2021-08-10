import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final carDetailModelProvider = StateNotifierProvider<CarDetailModel, Color>(
    (ref) => CarDetailModel(Colors.transparent));

class CarDetailModel extends StateNotifier<Color> {
  CarDetailModel(Color state) : super(state);

  void handleFavorite() {
    if (state == Colors.yellow) {
      state = Colors.transparent;
    } else {
      state = Colors.yellow;
    }
  }
}
// class CarDetailModel extends StateNotifier<Type> {
//   CarDetailModel(bool state) : super();
//
//   void handleFavorite() {
//     // if (_iconColor == Colors.yellow) {
//     //   _iconColor = Colors.transparent;
//     // } else {
//     //   _iconColor = Colors.yellow;
//     // }
//     if (state) {
//       state = false;
//     } else {
//       state = true;
//     }
//   }
// }
