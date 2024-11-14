# api_inventaire.api.IndexApi

## Load the API package
```dart
import 'package:api_inventaire/api.dart';
```

All URIs are relative to *http://localhost:9000*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getAllCodification1**](IndexApi.md#getallcodification1) | **GET** / | index


# **getAllCodification1**
> Object getAllCodification1()

index

### Example
```dart
import 'package:api_inventaire/api.dart';

final api_instance = IndexApi();

try {
    final result = api_instance.getAllCodification1();
    print(result);
} catch (e) {
    print('Exception when calling IndexApi->getAllCodification1: $e\n');
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

