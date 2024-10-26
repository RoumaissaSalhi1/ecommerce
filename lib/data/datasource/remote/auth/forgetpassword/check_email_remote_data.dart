import 'package:ecommece/core/class/crud.dart';
import 'package:ecommece/linkapi.dart';

class CheckEmailRemoteData {
  Crud crud;
  CheckEmailRemoteData(this.crud);

  postData(String email) async {
    var response = await crud.postData(
      AppLink.checkemail,
      {
        'email': email,
      },
    );
    //print(response.fold((l) => l, (r) => r));

    return response.fold((l) => l, (r) => r);
  }
}
