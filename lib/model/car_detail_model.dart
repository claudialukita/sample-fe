import 'package:flutter_riverpod/flutter_riverpod.dart';

final carDetailModelProvider =
    StateNotifierProvider<CarDetailModel, bool>((ref) => CarDetailModel());

class CarDetailModel extends StateNotifier<bool> {
  CarDetailModel() : super(false);

  void handleFavorite() {
    if (state) {
      state = false;
    } else {
      state = true;
    }
  }
}
