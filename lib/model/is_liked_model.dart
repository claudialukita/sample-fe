import 'package:flutter_riverpod/flutter_riverpod.dart';

final isLikedModelProvider =
    StateNotifierProvider<IsLikedModel, bool>((ref) => IsLikedModel());

class IsLikedModel extends StateNotifier<bool> {
  IsLikedModel() : super(false);

  void handleFavorite() {
    if (state) {
      state = false;
    } else {
      state = true;
    }
  }
}
