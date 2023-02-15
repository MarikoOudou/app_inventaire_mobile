import 'dart:convert';

import 'package:api_inventaire/api.dart';
import 'package:inventaire_immobilier/shared/constants/environnement.dart';

class InventaireRepository {
  ApiClient _client = new ApiClient();
  late CodificationApi _codificationApi;
  CodificationApi get codificationApi => _codificationApi;
  Authentication? authentication;

  InventaireRepository() {
    authentication?.applyToParams([new QueryParam("", "")],
        {'Content-type': 'application/json', 'Accept': 'application/json'});
    _client = ApiClient(basePath: URL_API, authentication: authentication);
    _codificationApi = CodificationApi(_client);
  }

  Future<ResponseData> getCodificationByN_Inventaire(
      {required String n_inventaire}) async {
    print(n_inventaire);
    ResponseData result = await codificationApi
        .getByNInventaireCodification(n_inventaire) as ResponseData;
    print(jsonEncode(await result));
    // print(result);
    return result;
  }
}
