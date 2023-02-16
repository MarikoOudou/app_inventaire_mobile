# api_inventaire.api.InventaireApi

## Load the API package
```dart
import 'package:api_inventaire/api.dart';
```

All URIs are relative to *http://192.168.86.25:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createInventaire**](InventaireApi.md#createinventaire) | **POST** /inventaire | Create inventaire
[**getAll1**](InventaireApi.md#getall1) | **GET** /inventaires | Get All inventaires
[**getByIdInventaire**](InventaireApi.md#getbyidinventaire) | **GET** /inventaire/{id} | Get by id
[**getByPeriode**](InventaireApi.md#getbyperiode) | **GET** /inventaires/{id_periode_inventaire} | Get All inventaires by periode
[**getInventaireByCodificationAndPeriodeInventaire**](InventaireApi.md#getinventairebycodificationandperiodeinventaire) | **GET** /inventaires/codification/{id_codification}/periodeinventaire/{id_periode_inventaire} | Get inventaire by codification and periode
[**updateInventaire**](InventaireApi.md#updateinventaire) | **PUT** /inventaire/{id} | Update inventaire


# **createInventaire**
> ResponseData createInventaire(inventaire)

Create inventaire

### Example
```dart
import 'package:api_inventaire/api.dart';

final api_instance = InventaireApi();
final inventaire = Inventaire(); // Inventaire | 

try {
    final result = api_instance.createInventaire(inventaire);
    print(result);
} catch (e) {
    print('Exception when calling InventaireApi->createInventaire: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inventaire** | [**Inventaire**](Inventaire.md)|  | 

### Return type

[**ResponseData**](ResponseData.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAll1**
> Object getAll1()

Get All inventaires

### Example
```dart
import 'package:api_inventaire/api.dart';

final api_instance = InventaireApi();

try {
    final result = api_instance.getAll1();
    print(result);
} catch (e) {
    print('Exception when calling InventaireApi->getAll1: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Object**](Object.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getByIdInventaire**
> Object getByIdInventaire(id)

Get by id

### Example
```dart
import 'package:api_inventaire/api.dart';

final api_instance = InventaireApi();
final id = 789; // int | 

try {
    final result = api_instance.getByIdInventaire(id);
    print(result);
} catch (e) {
    print('Exception when calling InventaireApi->getByIdInventaire: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | 

### Return type

[**Object**](Object.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getByPeriode**
> Object getByPeriode(idPeriodeInventaire)

Get All inventaires by periode

### Example
```dart
import 'package:api_inventaire/api.dart';

final api_instance = InventaireApi();
final idPeriodeInventaire = 789; // int | 

try {
    final result = api_instance.getByPeriode(idPeriodeInventaire);
    print(result);
} catch (e) {
    print('Exception when calling InventaireApi->getByPeriode: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **idPeriodeInventaire** | **int**|  | 

### Return type

[**Object**](Object.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getInventaireByCodificationAndPeriodeInventaire**
> ResponseData getInventaireByCodificationAndPeriodeInventaire(idCodification, idPeriodeInventaire)

Get inventaire by codification and periode

### Example
```dart
import 'package:api_inventaire/api.dart';

final api_instance = InventaireApi();
final idCodification = 789; // int | 
final idPeriodeInventaire = 789; // int | 

try {
    final result = api_instance.getInventaireByCodificationAndPeriodeInventaire(idCodification, idPeriodeInventaire);
    print(result);
} catch (e) {
    print('Exception when calling InventaireApi->getInventaireByCodificationAndPeriodeInventaire: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **idCodification** | **int**|  | 
 **idPeriodeInventaire** | **int**|  | 

### Return type

[**ResponseData**](ResponseData.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateInventaire**
> Object updateInventaire(id, inventaire)

Update inventaire

### Example
```dart
import 'package:api_inventaire/api.dart';

final api_instance = InventaireApi();
final id = 789; // int | 
final inventaire = Inventaire(); // Inventaire | 

try {
    final result = api_instance.updateInventaire(id, inventaire);
    print(result);
} catch (e) {
    print('Exception when calling InventaireApi->updateInventaire: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | 
 **inventaire** | [**Inventaire**](Inventaire.md)|  | 

### Return type

[**Object**](Object.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

