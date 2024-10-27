import 'package:ecommece/core/class/crud.dart';
import 'package:ecommece/linkapi.dart';

class HomeRemoteData {
  Crud crud;
  HomeRemoteData(this.crud);

  getData() async {
    var response = await crud.getData(AppLink.homepage);
    //print(response.fold((l) => l, (r) => r));

    return response.fold((l) => l, (r) => r);
  }
}
