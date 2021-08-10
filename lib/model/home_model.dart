import 'package:flutter_riverpod/flutter_riverpod.dart';

final homeModelProvider =
StateNotifierProvider<HomeModel, bool>((ref) => HomeModel());

class HomeModel extends StateNotifier<bool> {
  HomeModel() : super(false);

  void handleToggle() {
    if (state) {
      state = false;
    } else {
      state = true;
    }
  }
}
