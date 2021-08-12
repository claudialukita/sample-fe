import 'package:flutter_riverpod/flutter_riverpod.dart';

final isLikedModelProvider =
    StateNotifierProvider<IsLikedModel, bool>((ref) => IsLikedModel());

final isLikedModelProvider2 =
    StateNotifierProvider<IsLikedModel, bool>((ref) => IsLikedModel());

final isLikedModelProvider3 =
    StateNotifierProvider<IsLikedModel, bool>((ref) => IsLikedModel());

final isLikedModelProvider4 =
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
