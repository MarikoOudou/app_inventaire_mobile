//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Inventaire {
  /// Returns a new [Inventaire] instance.
  Inventaire({
    this.idInventaire,
    this.etat,
    this.nomAgent,
    this.observations,
    this.dateInventaire,
    this.codification,
    this.periodeInventaire,
    this.user,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? idInventaire;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? etat;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? nomAgent;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? observations;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? dateInventaire;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Codification? codification;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  PeriodeInventaire? periodeInventaire;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Users? user;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Inventaire &&
     other.idInventaire == idInventaire &&
     other.etat == etat &&
     other.nomAgent == nomAgent &&
     other.observations == observations &&
     other.dateInventaire == dateInventaire &&
     other.codification == codification &&
     other.periodeInventaire == periodeInventaire &&
     other.user == user;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (idInventaire == null ? 0 : idInventaire!.hashCode) +
    (etat == null ? 0 : etat!.hashCode) +
    (nomAgent == null ? 0 : nomAgent!.hashCode) +
    (observations == null ? 0 : observations!.hashCode) +
    (dateInventaire == null ? 0 : dateInventaire!.hashCode) +
    (codification == null ? 0 : codification!.hashCode) +
    (periodeInventaire == null ? 0 : periodeInventaire!.hashCode) +
    (user == null ? 0 : user!.hashCode);

  @override
  String toString() => 'Inventaire[idInventaire=$idInventaire, etat=$etat, nomAgent=$nomAgent, observations=$observations, dateInventaire=$dateInventaire, codification=$codification, periodeInventaire=$periodeInventaire, user=$user]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
    if (idInventaire != null) {
      _json[r'id_inventaire'] = idInventaire;
    }
    if (etat != null) {
      _json[r'etat'] = etat;
    }
    if (nomAgent != null) {
      _json[r'nom_agent'] = nomAgent;
    }
    if (observations != null) {
      _json[r'observations'] = observations;
    }
    if (dateInventaire != null) {
      _json[r'date_inventaire'] = dateInventaire!.toUtc().toIso8601String();
    }
    if (codification != null) {
      _json[r'codification'] = codification;
    }
    if (periodeInventaire != null) {
      _json[r'periodeInventaire'] = periodeInventaire;
    }
    if (user != null) {
      _json[r'user'] = user;
    }
    return _json;
  }

  /// Returns a new [Inventaire] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Inventaire? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Inventaire[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Inventaire[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Inventaire(
        idInventaire: mapValueOfType<int>(json, r'id_inventaire'),
        etat: mapValueOfType<String>(json, r'etat'),
        nomAgent: mapValueOfType<String>(json, r'nom_agent'),
        observations: mapValueOfType<String>(json, r'observations'),
        dateInventaire: mapDateTime(json, r'date_inventaire', ''),
        codification: Codification.fromJson(json[r'codification']),
        periodeInventaire: PeriodeInventaire.fromJson(json[r'periodeInventaire']),
        user: Users.fromJson(json[r'user']),
      );
    }
    return null;
  }

  static List<Inventaire>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Inventaire>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Inventaire.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Inventaire> mapFromJson(dynamic json) {
    final map = <String, Inventaire>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Inventaire.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Inventaire-objects as value to a dart map
  static Map<String, List<Inventaire>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Inventaire>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Inventaire.listFromJson(entry.value, growable: growable,);
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

