import 'package:day1/model/car.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final carsViewModelProvider =
    StateNotifierProvider<CarsViewModel, List<Car>>((ref) {
  return CarsViewModel([
    Car('Classic Car', '\$34/day', 'assets/images/Vehicle_Classic_Car.png',
        Color(0xFFB67853)),
    Car('Sport Car', '\$55/day', 'assets/images/Vehicle_Sport_Car.png',
        Color(0xFFB60B5F4)),
    Car('Flying Car', '\$500/day', 'assets/images/Vehicle_Flying_Car.png',
        Color(0xFF8382C2)),
    Car('Electric Car', '\$45/day', 'assets/images/Vehicle_Electric_Car.png',
        Color(0xFF2A3640)),
  ]);
});

class CarsViewModel extends StateNotifier<List<Car>> {
  CarsViewModel(List<Car> state) : super(state);
}
