import 'package:day1/model/favorite.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final favoriteViewModelProvider =
    StateNotifierProvider<FavoriteViewModel, List<Favorite>>((ref) {
  return FavoriteViewModel([
    Favorite(false),
    Favorite(false),
    Favorite(false),
    Favorite(false),
  ]);
});

class FavoriteViewModel extends StateNotifier<List<Favorite>> {
  FavoriteViewModel(List<Favorite> state) : super(state);
  void handlingFav(index) {
    if (state[index].isLiked) {
      state[index].isLiked = false;
    } else {
      state[index].isLiked = true;
    }
  }
}
