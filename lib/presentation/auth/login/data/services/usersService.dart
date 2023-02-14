import 'package:api_inventaire/api.dart';
import 'package:inventaire_immobilier/shared/constants/environnement.dart';

class UserService {
  ApiClient _client = new ApiClient();
  late UsersApi _userApi;
  UsersApi get usersApi => _userApi;

  UserService() {
    _client = ApiClient(basePath: URL_API);
    _userApi = UsersApi(_client);
  }

  getAllUsers() async {
    // List<Users>? users = await _userService.getAll();
    // print(users);
  }

  // _userService.getAll();
}
