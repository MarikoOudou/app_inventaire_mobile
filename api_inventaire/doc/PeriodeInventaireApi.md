# api_inventaire.api.PeriodeInventaireApi

## Load the API package
```dart
import 'package:api_inventaire/api.dart';
```

All URIs are relative to *http://192.168.86.25:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createPeriodeInventaire**](PeriodeInventaireApi.md#createperiodeinventaire) | **POST** /periodeinentaire | Create periode inentaire
[**getAllPeriodeInventaire**](PeriodeInventaireApi.md#getallperiodeinventaire) | **GET** /periodeinentaire | Get All periode inentaire
[**getByIdPeriodeInventaire**](PeriodeInventaireApi.md#getbyidperiodeinventaire) | **GET** /periodeinentaire/{id} | Get by id
[**updatePeriodeInventaire**](PeriodeInventaireApi.md#updateperiodeinventaire) | **PUT** /periodeinentaire/{id} | Update periode inentaire


# **createPeriodeInventaire**
> Object createPeriodeInventaire(periodeInventaire)

Create periode inentaire

### Example
```dart
import 'package:api_inventaire/api.dart';

final api_instance = PeriodeInventaireApi();
final periodeInventaire = PeriodeInventaire(); // PeriodeInventaire | 

try {
    final result = api_instance.createPeriodeInventaire(periodeInventaire);
    print(result);
} catch (e) {
    print('Exception when calling PeriodeInventaireApi->createPeriodeInventaire: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **periodeInventaire** | [**PeriodeInventaire**](PeriodeInventaire.md)|  | 

### Return type

[**Object**](Object.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAllPeriodeInventaire**
> Object getAllPeriodeInventaire()

Get All periode inentaire

### Example
```dart
import 'package:api_inventaire/api.dart';

final api_instance = PeriodeInventaireApi();

try {
    final result = api_instance.getAllPeriodeInventaire();
    print(result);
} catch (e) {
    print('Exception when calling PeriodeInventaireApi->getAllPeriodeInventaire: $e\n');
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

# **getByIdPeriodeInventaire**
> Object getByIdPeriodeInventaire(id)

Get by id

### Example
```dart
import 'package:api_inventaire/api.dart';

final api_instance = PeriodeInventaireApi();
final id = 789; // int | 

try {
    final result = api_instance.getByIdPeriodeInventaire(id);
    print(result);
} catch (e) {
    print('Exception when calling PeriodeInventaireApi->getByIdPeriodeInventaire: $e\n');
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

# **updatePeriodeInventaire**
> Object updatePeriodeInventaire(id, periodeInventaire)

Update periode inentaire

### Example
```dart
import 'package:api_inventaire/api.dart';

final api_instance = PeriodeInventaireApi();
final id = 789; // int | 
final periodeInventaire = PeriodeInventaire(); // PeriodeInventaire | 

try {
    final result = api_instance.updatePeriodeInventaire(id, periodeInventaire);
    print(result);
} catch (e) {
    print('Exception when calling PeriodeInventaireApi->updatePeriodeInventaire: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | 
 **periodeInventaire** | [**PeriodeInventaire**](PeriodeInventaire.md)|  | 

### Return type

[**Object**](Object.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

