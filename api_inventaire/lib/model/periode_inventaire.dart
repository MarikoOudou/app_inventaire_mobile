//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PeriodeInventaire {
  /// Returns a new [PeriodeInventaire] instance.
  PeriodeInventaire({
    this.idPeriodeInventaire,
    this.libelle,
    this.nBordereau,
    this.isActive,
    this.dateDebut,
    this.dateFin,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? idPeriodeInventaire;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? libelle;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? nBordereau;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isActive;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? dateDebut;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? dateFin;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PeriodeInventaire &&
     other.idPeriodeInventaire == idPeriodeInventaire &&
     other.libelle == libelle &&
     other.nBordereau == nBordereau &&
     other.isActive == isActive &&
     other.dateDebut == dateDebut &&
     other.dateFin == dateFin;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (idPeriodeInventaire == null ? 0 : idPeriodeInventaire!.hashCode) +
    (libelle == null ? 0 : libelle!.hashCode) +
    (nBordereau == null ? 0 : nBordereau!.hashCode) +
    (isActive == null ? 0 : isActive!.hashCode) +
    (dateDebut == null ? 0 : dateDebut!.hashCode) +
    (dateFin == null ? 0 : dateFin!.hashCode);

  @override
  String toString() => 'PeriodeInventaire[idPeriodeInventaire=$idPeriodeInventaire, libelle=$libelle, nBordereau=$nBordereau, isActive=$isActive, dateDebut=$dateDebut, dateFin=$dateFin]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
    if (idPeriodeInventaire != null) {
      _json[r'id_periode_inventaire'] = idPeriodeInventaire;
    }
    if (libelle != null) {
      _json[r'libelle'] = libelle;
    }
    if (nBordereau != null) {
      _json[r'n_bordereau'] = nBordereau;
    }
    if (isActive != null) {
      _json[r'isActive'] = isActive;
    }
    if (dateDebut != null) {
      _json[r'date_debut'] = dateDebut!.toUtc().toIso8601String();
    }
    if (dateFin != null) {
      _json[r'date_fin'] = dateFin!.toUtc().toIso8601String();
    }
    return _json;
  }

  /// Returns a new [PeriodeInventaire] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PeriodeInventaire? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "PeriodeInventaire[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "PeriodeInventaire[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PeriodeInventaire(
        idPeriodeInventaire: mapValueOfType<int>(json, r'id_periode_inventaire'),
        libelle: mapValueOfType<String>(json, r'libelle'),
        nBordereau: mapValueOfType<String>(json, r'n_bordereau'),
        isActive: mapValueOfType<bool>(json, r'isActive'),
        dateDebut: mapDateTime(json, r'date_debut', ''),
        dateFin: mapDateTime(json, r'date_fin', ''),
      );
    }
    return null;
  }

  static List<PeriodeInventaire>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PeriodeInventaire>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PeriodeInventaire.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PeriodeInventaire> mapFromJson(dynamic json) {
    final map = <String, PeriodeInventaire>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PeriodeInventaire.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PeriodeInventaire-objects as value to a dart map
  static Map<String, List<PeriodeInventaire>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PeriodeInventaire>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PeriodeInventaire.listFromJson(entry.value, growable: growable,);
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

