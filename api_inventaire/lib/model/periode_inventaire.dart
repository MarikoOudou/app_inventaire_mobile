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
    this.dateDebut,
    this.dateFin,
    this.active,
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
  DateTime? dateDebut;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? dateFin;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? active;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PeriodeInventaire &&
          other.idPeriodeInventaire == idPeriodeInventaire &&
          other.libelle == libelle &&
          other.nBordereau == nBordereau &&
          other.dateDebut == dateDebut &&
          other.dateFin == dateFin &&
          other.active == active;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (idPeriodeInventaire == null ? 0 : idPeriodeInventaire!.hashCode) +
      (libelle == null ? 0 : libelle!.hashCode) +
      (nBordereau == null ? 0 : nBordereau!.hashCode) +
      (dateDebut == null ? 0 : dateDebut!.hashCode) +
      (dateFin == null ? 0 : dateFin!.hashCode) +
      (active == null ? 0 : active!.hashCode);

  @override
  String toString() =>
      'PeriodeInventaire[idPeriodeInventaire=$idPeriodeInventaire, libelle=$libelle, nBordereau=$nBordereau, dateDebut=$dateDebut, dateFin=$dateFin, active=$active]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.idPeriodeInventaire != null) {
      json[r'id_periode_inventaire'] = this.idPeriodeInventaire;
    } else {
      json[r'id_periode_inventaire'] = null;
    }
    if (this.libelle != null) {
      json[r'libelle'] = this.libelle;
    } else {
      json[r'libelle'] = null;
    }
    if (this.nBordereau != null) {
      json[r'n_bordereau'] = this.nBordereau;
    } else {
      json[r'n_bordereau'] = null;
    }
    if (this.dateDebut != null) {
      json[r'date_debut'] = this.dateDebut!.toUtc().toIso8601String();
    } else {
      json[r'date_debut'] = null;
    }
    if (this.dateFin != null) {
      json[r'date_fin'] = this.dateFin!.toUtc().toIso8601String();
    } else {
      json[r'date_fin'] = null;
    }
    if (this.active != null) {
      json[r'active'] = this.active;
    } else {
      json[r'active'] = null;
    }
    return json;
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
          assert(json.containsKey(key),
              'Required key "PeriodeInventaire[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "PeriodeInventaire[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PeriodeInventaire(
        idPeriodeInventaire:
            mapValueOfType<int>(json, r'id_periode_inventaire'),
        libelle: mapValueOfType<String>(json, r'libelle'),
        nBordereau: mapValueOfType<String>(json, r'n_bordereau'),
        dateDebut: mapDateTime(json, r'date_debut', r''),
        dateFin: mapDateTime(json, r'date_fin', r''),
        active: mapValueOfType<bool>(json, r'active'),
      );
    }
    return null;
  }

  static List<PeriodeInventaire> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
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
  static Map<String, List<PeriodeInventaire>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<PeriodeInventaire>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PeriodeInventaire.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{};
}
