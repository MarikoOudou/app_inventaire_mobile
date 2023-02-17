# api_inventaire.api.CodificationApi

## Load the API package
```dart
import 'package:api_inventaire/api.dart';
```

All URIs are relative to *http://192.168.1.64:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createCodification**](CodificationApi.md#createcodification) | **POST** /codification | Create codification
[**creates**](CodificationApi.md#creates) | **POST** /codifications | Create multiple codification
[**getAllCodification**](CodificationApi.md#getallcodification) | **GET** /codifications | Get All Codification
[**getByCodeLocalisationCodification**](CodificationApi.md#getbycodelocalisationcodification) | **GET** /codifications/code_localisation/{code_localisation} | Get by code_localisation
[**getByIdCodification**](CodificationApi.md#getbyidcodification) | **GET** /codifications/{id} | Get By id
[**getByNInventaireCodification**](CodificationApi.md#getbyninventairecodification) | **GET** /codifications/n_inventaire/{n_inventaire} | Get by n° inventaire
[**updateCodification**](CodificationApi.md#updatecodification) | **PUT** /codification/{id} | Update codification


# **createCodification**
> Object createCodification(codification)

Create codification

### Example
```dart
import 'package:api_inventaire/api.dart';

final api_instance = CodificationApi();
final codification = Codification(); // Codification | 

try {
    final result = api_instance.createCodification(codification);
    print(result);
} catch (e) {
    print('Exception when calling CodificationApi->createCodification: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **codification** | [**Codification**](Codification.md)|  | 

### Return type

[**Object**](Object.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **creates**
> Object creates(codification)

Create multiple codification

### Example
```dart
import 'package:api_inventaire/api.dart';

final api_instance = CodificationApi();
final codification = [List<Codification>()]; // List<Codification> | 

try {
    final result = api_instance.creates(codification);
    print(result);
} catch (e) {
    print('Exception when calling CodificationApi->creates: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **codification** | [**List<Codification>**](Codification.md)|  | 

### Return type

[**Object**](Object.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAllCodification**
> Object getAllCodification()

Get All Codification

### Example
```dart
import 'package:api_inventaire/api.dart';

final api_instance = CodificationApi();

try {
    final result = api_instance.getAllCodification();
    print(result);
} catch (e) {
    print('Exception when calling CodificationApi->getAllCodification: $e\n');
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

# **getByCodeLocalisationCodification**
> Object getByCodeLocalisationCodification(codeLocalisation)

Get by code_localisation

### Example
```dart
import 'package:api_inventaire/api.dart';

final api_instance = CodificationApi();
final codeLocalisation = codeLocalisation_example; // String | 

try {
    final result = api_instance.getByCodeLocalisationCodification(codeLocalisation);
    print(result);
} catch (e) {
    print('Exception when calling CodificationApi->getByCodeLocalisationCodification: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **codeLocalisation** | **String**|  | 

### Return type

[**Object**](Object.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getByIdCodification**
> Object getByIdCodification(id)

Get By id

### Example
```dart
import 'package:api_inventaire/api.dart';

final api_instance = CodificationApi();
final id = 789; // int | 

try {
    final result = api_instance.getByIdCodification(id);
    print(result);
} catch (e) {
    print('Exception when calling CodificationApi->getByIdCodification: $e\n');
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

# **getByNInventaireCodification**
> ResponseData getByNInventaireCodification(nInventaire)

Get by n° inventaire

### Example
```dart
import 'package:api_inventaire/api.dart';

final api_instance = CodificationApi();
final nInventaire = nInventaire_example; // String | 

try {
    final result = api_instance.getByNInventaireCodification(nInventaire);
    print(result);
} catch (e) {
    print('Exception when calling CodificationApi->getByNInventaireCodification: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **nInventaire** | **String**|  | 

### Return type

[**ResponseData**](ResponseData.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateCodification**
> Object updateCodification(id, codification)

Update codification

### Example
```dart
import 'package:api_inventaire/api.dart';

final api_instance = CodificationApi();
final id = 789; // int | 
final codification = Codification(); // Codification | 

try {
    final result = api_instance.updateCodification(id, codification);
    print(result);
} catch (e) {
    print('Exception when calling CodificationApi->updateCodification: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | 
 **codification** | [**Codification**](Codification.md)|  | 

### Return type

[**Object**](Object.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

