import 'package:rxdart_bloc_dio_demoexample/model/UserResponse.dart';

import 'UserApiProvider.dart';

class UserRepository{
  UserApiProvider _apiProvider = UserApiProvider();

  Future<UserResponse> getUser(){
    return _apiProvider.getUser();
  }
}