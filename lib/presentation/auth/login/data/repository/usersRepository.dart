import 'dart:convert';

import 'package:api_inventaire/api.dart';
import 'package:inventaire_immobilier/shared/constants/environnement.dart';

class UsersRepository {
  ApiClient _client = new ApiClient();
  late UsersApi _userApi;
  UsersApi get usersApi => _userApi;
  Authentication? authentication;

  UsersRepository() {
    authentication?.applyToParams([new QueryParam("", "")],
        {'Content-type': 'application/json', 'Accept': 'application/json'});
    _client = ApiClient(basePath: URL_API, authentication: authentication);
    _userApi = UsersApi(_client);
  }

  Future<ResponseData> authenticate({required String email}) async {
    Users users = new Users();
    users.email = email;
    // print(users);
    ResponseData result = await usersApi.getUserByEmail(users) as ResponseData;
    // print(jsonEncode(await result));
    // print(result);
    return result;
  }
}
