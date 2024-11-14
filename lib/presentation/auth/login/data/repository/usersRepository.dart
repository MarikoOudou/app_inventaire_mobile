import 'dart:convert';

import 'package:api_inventaire/api.dart';
import 'package:inventaire_immobilier/shared/constants/environnement.dart';
import 'package:http/http.dart' as http;

class UsersRepository {
  ApiClient _client = ApiClient();
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
    Users users = Users();
    users.email = email;
    // print(users);
    ResponseData result = await usersApi.getUserByEmail(users) as ResponseData;
    // print(jsonEncode(await result));
    // print(result);
    return result;
  }

  // Future<ResponseData> authenticate ({required String email}) async {
  //     Users users = Users();
  //     users.email = email;
    
  //   final response = await http.post(
  //     Uri.parse(URL_API+"/user/email"),
  //     headers: <String, String>{
  //       'Content-Type': 'application/json; charset=UTF-8',
  //     },
  //     body: jsonEncode (users.toJson())
  //   );

  //   print(response.body.toString());

  //   ResponseData resut = ResponseData.fromJson(jsonDecode(response.body) as Map<String, dynamic>) as ResponseData;

  //   return resut ;
 

  // }


}