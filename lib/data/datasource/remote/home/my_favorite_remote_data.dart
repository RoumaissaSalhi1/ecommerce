import 'package:ecommece/core/class/crud.dart';
import 'package:ecommece/linkapi.dart';

class MyFavoriteRemoteData {
  Crud crud;
  MyFavoriteRemoteData(this.crud);

  getData(
    String userId,
  ) async {
    var response = await crud.postData(
      AppLink.favoriteView,
      {
        'userId': userId,
      },
    );

    return response.fold((l) => l, (r) => r);
  }
}
