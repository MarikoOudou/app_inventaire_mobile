import 'dart:convert';
import 'package:api_inventaire/api.dart';
import 'package:inventaire_immobilier/shared/constants/environnement.dart';
import 'package:http/http.dart' as http;

class InventaireRepository {
  ApiClient _client = new ApiClient();
  late CodificationApi _codificationApi;
  CodificationApi get codificationApi => _codificationApi;

  late PeriodeInventaireApi _periodeInventaireApi;
  PeriodeInventaireApi get periodeInventaireApi => _periodeInventaireApi;

  late InventaireApi _inventaireApi;
  InventaireApi get inventaireApi => _inventaireApi;

  Authentication? authentication;

  InventaireRepository() {
    authentication?.applyToParams([new QueryParam("", "")],
        {'Content-type': 'application/json', 'Accept': 'application/json'});
    _client = ApiClient(basePath: URL_API, authentication: authentication);
    _codificationApi = CodificationApi(_client);
    _periodeInventaireApi = PeriodeInventaireApi(_client);
    _inventaireApi = InventaireApi(_client);
  }

  Future<ResponseData> getCodificationByN_Inventaire(
      {required String n_inventaire}) async {
    print(_client.basePath);
    print("N° inventaire to send :" + n_inventaire);
    ResponseData result = await codificationApi
        .getByNInventaireCodification(n_inventaire) as ResponseData;
    // print(jsonEncode(await result));
    return result;
  }

  Future<ResponseData> getPeriodeInventaireIsActive() async {
    ResponseData result = await periodeInventaireApi
        .getPeriodeInventaireIsActive() as ResponseData;
    print(jsonEncode(await result));
    return result;
  }

  Future<ResponseData> verifieInventaire(
      int id_codification, int id_periode_inventaire) async {
    print("id_codification :" + id_codification.toString());
    print("id_periode_inventaire :" + id_periode_inventaire.toString());

    ResponseData result =
        await inventaireApi.getInventaireByCodificationAndPeriodeInventaire(
            id_codification, id_periode_inventaire) as ResponseData;
    print(jsonEncode(await result));
    return result;
  }

  Future<ResponseData> createInventaire(Inventaire inventaire) async {
    print("Inventaire :" + inventaire.toString());

    Map<String, String> body = {
      'etat': inventaire.etat.toString(),
      'nom_agent': inventaire.nomAgent.toString(),
      'observations': inventaire.observations.toString(),
      'libelle_immo': inventaire.libelle_immo.toString(),
      'libelle_localisation': inventaire.libelle_localisation.toString(),
      'code_localisation': inventaire.code_localisation.toString(),
      'libelle_complementaire': inventaire.libelle_complementaire.toString(),
      'date_inventaire': inventaire.dateInventaire.toString(),
      'id_codification': inventaire.codification!.id.toString(),
      'id_periode_inventaire':
          inventaire.periodeInventaire!.idPeriodeInventaire.toString(),
      'userId': inventaire.user!.id.toString()
    };

    http.Response result = await post(body, URL_API + "/inventaire");

    print(jsonDecode(result.body));
    return ResponseData.fromJson(jsonDecode(result.body)) ?? new ResponseData();
  }

  Future<http.Response> post(Map<String, String> body, String path) {
    print(path);
    return http.post(
      Uri.parse(path),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      // body: jsonEncode(<String, String>{
      //   'title': title,
      // }),
      body: jsonEncode(body),
    );
  }
}
