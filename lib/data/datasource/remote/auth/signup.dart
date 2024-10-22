import 'package:ecommece/core/class/crud.dart';
import 'package:ecommece/linkapi.dart';

class SignUpRemoteData {
  Crud crud;
  SignUpRemoteData(this.crud);

  postData(String username, String email, String phone, String password) async {
    var response = await crud.postData(
      AppLink.signup,
      {
        'username': username,
        'email': email,
        'phone': phone,
        'password': password,
      },
    );
     //print(response.fold((l) => l, (r) => r));

    return response.fold((l) => l, (r) => r);
  }
}
