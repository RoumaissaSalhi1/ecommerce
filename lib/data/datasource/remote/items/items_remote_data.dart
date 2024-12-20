import 'package:ecommece/core/class/crud.dart';
import 'package:ecommece/linkapi.dart';

class ItemsRemoteData {
  Crud crud;
  ItemsRemoteData(this.crud);

  getData(String userId, String categoryId) async {
    var response = await crud.postData(
      AppLink.items,
      {
        'userId': userId,
        'categoryId': categoryId,
      },
    );
    //print(response.fold((l) => l, (r) => r));

    return response.fold((l) => l, (r) => r);
  }
}
