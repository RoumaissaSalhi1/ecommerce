import 'package:ecommece/core/class/crud.dart';
import 'package:ecommece/linkapi.dart';

class ItemsRemoteData {
  Crud crud;
  ItemsRemoteData(this.crud);

  getData(String id) async {
    var response = await crud.postData(
      AppLink.items,
      {
        'id': id,
      },
    );
    //print(response.fold((l) => l, (r) => r));

    return response.fold((l) => l, (r) => r);
  }
}
