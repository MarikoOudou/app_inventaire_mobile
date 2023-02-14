//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Users {
  /// Returns a new [Users] instance.
  Users({
    this.userId,
    this.email,
    this.typeUser,
    this.adress,
    this.fullname,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? userId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? email;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? typeUser;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? adress;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? fullname;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Users &&
     other.userId == userId &&
     other.email == email &&
     other.typeUser == typeUser &&
     other.adress == adress &&
     other.fullname == fullname;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (userId == null ? 0 : userId!.hashCode) +
    (email == null ? 0 : email!.hashCode) +
    (typeUser == null ? 0 : typeUser!.hashCode) +
    (adress == null ? 0 : adress!.hashCode) +
    (fullname == null ? 0 : fullname!.hashCode);

  @override
  String toString() => 'Users[userId=$userId, email=$email, typeUser=$typeUser, adress=$adress, fullname=$fullname]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
    if (userId != null) {
      _json[r'userId'] = userId;
    }
    if (email != null) {
      _json[r'email'] = email;
    }
    if (typeUser != null) {
      _json[r'typeUser'] = typeUser;
    }
    if (adress != null) {
      _json[r'adress'] = adress;
    }
    if (fullname != null) {
      _json[r'fullname'] = fullname;
    }
    return _json;
  }

  /// Returns a new [Users] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Users? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Users[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Users[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Users(
        userId: mapValueOfType<int>(json, r'userId'),
        email: mapValueOfType<String>(json, r'email'),
        typeUser: mapValueOfType<String>(json, r'typeUser'),
        adress: mapValueOfType<String>(json, r'adress'),
        fullname: mapValueOfType<String>(json, r'fullname'),
      );
    }
    return null;
  }

  static List<Users>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Users>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Users.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Users> mapFromJson(dynamic json) {
    final map = <String, Users>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Users.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Users-objects as value to a dart map
  static Map<String, List<Users>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Users>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Users.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

