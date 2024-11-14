//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PeriodeInventaireApi {
  PeriodeInventaireApi([ApiClient? apiClient])
      : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Update periode by isActive
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///
  /// * [PeriodeInventaire] periodeInventaire (required):
  Future<Response> activeOrDiseableWithHttpInfo(
    int id,
    PeriodeInventaire periodeInventaire,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/periodeinentaire/activeordiseable/{id}'
        .replaceAll('{id}', id.toString());

    // ignore: prefer_final_locals
    Object? postBody = periodeInventaire;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];

    return apiClient.invokeAPI(
      path,
      'PATCH',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Update periode by isActive
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///
  /// * [PeriodeInventaire] periodeInventaire (required):
  Future<ResponseData?> activeOrDiseable(
    int id,
    PeriodeInventaire periodeInventaire,
  ) async {
    final response = await activeOrDiseableWithHttpInfo(
      id,
      periodeInventaire,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty &&
        response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'ResponseData',
      ) as ResponseData;
    }
    return null;
  }

  /// Create periode inventaire
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [PeriodeInventaire] periodeInventaire (required):
  Future<Response> createPeriodeInventaireWithHttpInfo(
    PeriodeInventaire periodeInventaire,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/periodeinentaire';

    // ignore: prefer_final_locals
    Object? postBody = periodeInventaire;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];

    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Create periode inventaire
  ///
  /// Parameters:
  ///
  /// * [PeriodeInventaire] periodeInventaire (required):
  Future<Object?> createPeriodeInventaire(
    PeriodeInventaire periodeInventaire,
  ) async {
    final response = await createPeriodeInventaireWithHttpInfo(
      periodeInventaire,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty &&
        response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'Object',
      ) as Object;
    }
    return null;
  }

  /// Get All periode inventaire
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getAllPeriodeInventaireWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/periodeinentaire';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];

    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get All periode inventaire
  Future<ResponseData?> getAllPeriodeInventaire() async {
    final response = await getAllPeriodeInventaireWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty &&
        response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'ResponseData',
      ) as ResponseData;
    }
    return null;
  }

  /// Get by id
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  Future<Response> getByIdPeriodeInventaireWithHttpInfo(
    int id,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/periodeinentaire/{id}'.replaceAll('{id}', id.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];

    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get by id
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  Future<Object?> getByIdPeriodeInventaire(
    int id,
  ) async {
    final response = await getByIdPeriodeInventaireWithHttpInfo(
      id,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty &&
        response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'Object',
      ) as Object;
    }
    return null;
  }

  /// Get periode inventaire is active
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getPeriodeInventaireIsActiveWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/periodeinentaire/isactive';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];

    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get periode inventaire is active
  Future<ResponseData?> getPeriodeInventaireIsActive() async {
    final response = await getPeriodeInventaireIsActiveWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty &&
        response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'ResponseData',
      ) as ResponseData;
    }
    return null;
  }

  /// Update periode inventaire
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///
  /// * [PeriodeInventaire] periodeInventaire (required):
  Future<Response> updatePeriodeInventaireWithHttpInfo(
    int id,
    PeriodeInventaire periodeInventaire,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/periodeinentaire/{id}'.replaceAll('{id}', id.toString());

    // ignore: prefer_final_locals
    Object? postBody = periodeInventaire;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];

    return apiClient.invokeAPI(
      path,
      'PUT',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Update periode inventaire
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///
  /// * [PeriodeInventaire] periodeInventaire (required):
  Future<Object?> updatePeriodeInventaire(
    int id,
    PeriodeInventaire periodeInventaire,
  ) async {
    final response = await updatePeriodeInventaireWithHttpInfo(
      id,
      periodeInventaire,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty &&
        response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'Object',
      ) as Object;
    }
    return null;
  }
}
