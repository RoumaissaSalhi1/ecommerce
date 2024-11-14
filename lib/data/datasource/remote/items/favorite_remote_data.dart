import 'package:ecommece/core/class/crud.dart';
import 'package:ecommece/linkapi.dart';

class FavoriteRemoteData {
  Crud crud;
  FavoriteRemoteData(this.crud);

  //add to favorite
  addFavorite(String userId, String itemId) async {
    var response = await crud.postData(
      AppLink.favoriteAdd,
      {
        'userId': userId,
        'itemId': itemId,
      },
    );
    return response.fold((l) => l, (r) => r);
  }

  //remove from favorite
  removeFavorite(String userId, String itemId) async {
    var response = await crud.postData(
      AppLink.favoriteRemove,
      {
        'userId': userId,
        'itemId': itemId,
      },
    );
    return response.fold((l) => l, (r) => r);
  }
}
