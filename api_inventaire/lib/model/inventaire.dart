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
    required this.nInventaire,
    this.idInventaire,
    this.etat,
    this.nomAgent,
    this.observations,
    this.libelleImmo,
    this.libelleLocalisation,
    this.codeLocalisation,
    this.libelleComplementaire,
    this.dateInventaire,
    this.codification,
    this.periodeInventaire,
    this.user,
  });

  String nInventaire;

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
  String? libelleImmo;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? libelleLocalisation;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? codeLocalisation;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? libelleComplementaire;

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
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Inventaire &&
          other.nInventaire == nInventaire &&
          other.idInventaire == idInventaire &&
          other.etat == etat &&
          other.nomAgent == nomAgent &&
          other.observations == observations &&
          other.libelleImmo == libelleImmo &&
          other.libelleLocalisation == libelleLocalisation &&
          other.codeLocalisation == codeLocalisation &&
          other.libelleComplementaire == libelleComplementaire &&
          other.dateInventaire == dateInventaire &&
          other.codification == codification &&
          other.periodeInventaire == periodeInventaire &&
          other.user == user;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (nInventaire.hashCode) +
      (idInventaire == null ? 0 : idInventaire!.hashCode) +
      (etat == null ? 0 : etat!.hashCode) +
      (nomAgent == null ? 0 : nomAgent!.hashCode) +
      (observations == null ? 0 : observations!.hashCode) +
      (libelleImmo == null ? 0 : libelleImmo!.hashCode) +
      (libelleLocalisation == null ? 0 : libelleLocalisation!.hashCode) +
      (codeLocalisation == null ? 0 : codeLocalisation!.hashCode) +
      (libelleComplementaire == null ? 0 : libelleComplementaire!.hashCode) +
      (dateInventaire == null ? 0 : dateInventaire!.hashCode) +
      (codification == null ? 0 : codification!.hashCode) +
      (periodeInventaire == null ? 0 : periodeInventaire!.hashCode) +
      (user == null ? 0 : user!.hashCode);

  @override
  String toString() =>
      'Inventaire[nInventaire=$nInventaire, idInventaire=$idInventaire, etat=$etat, nomAgent=$nomAgent, observations=$observations, libelleImmo=$libelleImmo, libelleLocalisation=$libelleLocalisation, codeLocalisation=$codeLocalisation, libelleComplementaire=$libelleComplementaire, dateInventaire=$dateInventaire, codification=$codification, periodeInventaire=$periodeInventaire, user=$user]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'n_inventaire'] = this.nInventaire;
    if (this.idInventaire != null) {
      json[r'id_inventaire'] = this.idInventaire;
    } else {
      json[r'id_inventaire'] = null;
    }
    if (this.etat != null) {
      json[r'etat'] = this.etat;
    } else {
      json[r'etat'] = null;
    }
    if (this.nomAgent != null) {
      json[r'nom_agent'] = this.nomAgent;
    } else {
      json[r'nom_agent'] = null;
    }
    if (this.observations != null) {
      json[r'observations'] = this.observations;
    } else {
      json[r'observations'] = null;
    }
    if (this.libelleImmo != null) {
      json[r'libelle_immo'] = this.libelleImmo;
    } else {
      json[r'libelle_immo'] = null;
    }
    if (this.libelleLocalisation != null) {
      json[r'libelle_localisation'] = this.libelleLocalisation;
    } else {
      json[r'libelle_localisation'] = null;
    }
    if (this.codeLocalisation != null) {
      json[r'code_localisation'] = this.codeLocalisation;
    } else {
      json[r'code_localisation'] = null;
    }
    if (this.libelleComplementaire != null) {
      json[r'libelle_complementaire'] = this.libelleComplementaire;
    } else {
      json[r'libelle_complementaire'] = null;
    }
    if (this.dateInventaire != null) {
      json[r'date_inventaire'] = this.dateInventaire!.toUtc().toIso8601String();
    } else {
      json[r'date_inventaire'] = null;
    }
    if (this.codification != null) {
      json[r'codification'] = this.codification;
    } else {
      json[r'codification'] = null;
    }
    if (this.periodeInventaire != null) {
      json[r'periodeInventaire'] = this.periodeInventaire;
    } else {
      json[r'periodeInventaire'] = null;
    }
    if (this.user != null) {
      json[r'user'] = this.user;
    } else {
      json[r'user'] = null;
    }
    return json;
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
          assert(json.containsKey(key),
              'Required key "Inventaire[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "Inventaire[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Inventaire(
        nInventaire: mapValueOfType<String>(json, r'n_inventaire')!,
        idInventaire: mapValueOfType<int>(json, r'id_inventaire'),
        etat: mapValueOfType<String>(json, r'etat'),
        nomAgent: mapValueOfType<String>(json, r'nom_agent'),
        observations: mapValueOfType<String>(json, r'observations'),
        libelleImmo: mapValueOfType<String>(json, r'libelle_immo'),
        libelleLocalisation:
            mapValueOfType<String>(json, r'libelle_localisation'),
        codeLocalisation: mapValueOfType<String>(json, r'code_localisation'),
        libelleComplementaire:
            mapValueOfType<String>(json, r'libelle_complementaire'),
        dateInventaire: mapDateTime(json, r'date_inventaire', r''),
        codification: Codification.fromJson(json[r'codification']),
        periodeInventaire:
            PeriodeInventaire.fromJson(json[r'periodeInventaire']),
        user: Users.fromJson(json[r'user']),
      );
    }
    return null;
  }

  static List<Inventaire> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
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
  static Map<String, List<Inventaire>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<Inventaire>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Inventaire.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'n_inventaire',
  };
}
