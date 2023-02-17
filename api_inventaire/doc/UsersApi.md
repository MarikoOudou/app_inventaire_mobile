# api_inventaire.api.UsersApi

## Load the API package
```dart
import 'package:api_inventaire/api.dart';
```

All URIs are relative to *http://192.168.1.64:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create**](UsersApi.md#create) | **POST** /user | Create user
[**getAll**](UsersApi.md#getall) | **GET** /users | Get All user
[**getById**](UsersApi.md#getbyid) | **GET** /user/{users_id} | Get user by id
[**getUserByEmail**](UsersApi.md#getuserbyemail) | **POST** /user/email | Get User By Email
[**update**](UsersApi.md#update) | **PUT** /user/{users_id} | Update user


# **create**
> Object create(users)

Create user

### Example
```dart
import 'package:api_inventaire/api.dart';

final api_instance = UsersApi();
final users = Users(); // Users | 

try {
    final result = api_instance.create(users);
    print(result);
} catch (e) {
    print('Exception when calling UsersApi->create: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **users** | [**Users**](Users.md)|  | 

### Return type

[**Object**](Object.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAll**
> List<Users> getAll()

Get All user

### Example
```dart
import 'package:api_inventaire/api.dart';

final api_instance = UsersApi();

try {
    final result = api_instance.getAll();
    print(result);
} catch (e) {
    print('Exception when calling UsersApi->getAll: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<Users>**](Users.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getById**
> Users getById(usersId)

Get user by id

### Example
```dart
import 'package:api_inventaire/api.dart';

final api_instance = UsersApi();
final usersId = 56; // int | 

try {
    final result = api_instance.getById(usersId);
    print(result);
} catch (e) {
    print('Exception when calling UsersApi->getById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **usersId** | **int**|  | 

### Return type

[**Users**](Users.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUserByEmail**
> ResponseData getUserByEmail(users)

Get User By Email

### Example
```dart
import 'package:api_inventaire/api.dart';

final api_instance = UsersApi();
final users = Users(); // Users | 

try {
    final result = api_instance.getUserByEmail(users);
    print(result);
} catch (e) {
    print('Exception when calling UsersApi->getUserByEmail: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **users** | [**Users**](Users.md)|  | 

### Return type

[**ResponseData**](ResponseData.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update**
> Users update(usersId, users)

Update user

### Example
```dart
import 'package:api_inventaire/api.dart';

final api_instance = UsersApi();
final usersId = 56; // int | 
final users = Users(); // Users | 

try {
    final result = api_instance.update(usersId, users);
    print(result);
} catch (e) {
    print('Exception when calling UsersApi->update: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **usersId** | **int**|  | 
 **users** | [**Users**](Users.md)|  | 

### Return type

[**Users**](Users.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

