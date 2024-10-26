import 'package:ecommece/core/class/crud.dart';
import 'package:ecommece/linkapi.dart';

class ResetPasswordRemoteData {
  Crud crud;
  ResetPasswordRemoteData(this.crud);

  postData(String email, String password) async {
    var response = await crud.postData(
      AppLink.resetpassword,
      {
        'email': email,
        'password': password,
      },
    );
    //print(response.fold((l) => l, (r) => r));

    return response.fold((l) => l, (r) => r);
  }
}
