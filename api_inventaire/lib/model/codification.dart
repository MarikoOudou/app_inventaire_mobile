//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Codification {
  /// Returns a new [Codification] instance.
  Codification({
    required this.nInventaire,
    this.idCodification,
    this.codeGuichet,
    this.departement,
    this.nSerie,
    this.direction,
    this.famille,
    this.libelleFamille,
    this.libelleImmo,
    this.sousLibelleFamille,
    this.libelleComplementaire,
    this.niveau,
    this.service,
    this.sousFamille,
    this.codeLocalisation,
    this.libelleAgence,
    this.libelleLocalisation,
  });

  String nInventaire;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? idCodification;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? codeGuichet;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? departement;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? nSerie;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? direction;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? famille;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? libelleFamille;

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
  String? sousLibelleFamille;

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
  String? niveau;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? service;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? sousFamille;

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
  String? libelleAgence;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? libelleLocalisation;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Codification &&
          other.nInventaire == nInventaire &&
          other.idCodification == idCodification &&
          other.codeGuichet == codeGuichet &&
          other.departement == departement &&
          other.nSerie == nSerie &&
          other.direction == direction &&
          other.famille == famille &&
          other.libelleFamille == libelleFamille &&
          other.libelleImmo == libelleImmo &&
          other.sousLibelleFamille == sousLibelleFamille &&
          other.libelleComplementaire == libelleComplementaire &&
          other.niveau == niveau &&
          other.service == service &&
          other.sousFamille == sousFamille &&
          other.codeLocalisation == codeLocalisation &&
          other.libelleAgence == libelleAgence &&
          other.libelleLocalisation == libelleLocalisation;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (nInventaire.hashCode) +
      (idCodification == null ? 0 : idCodification!.hashCode) +
      (codeGuichet == null ? 0 : codeGuichet!.hashCode) +
      (departement == null ? 0 : departement!.hashCode) +
      (nSerie == null ? 0 : nSerie!.hashCode) +
      (direction == null ? 0 : direction!.hashCode) +
      (famille == null ? 0 : famille!.hashCode) +
      (libelleFamille == null ? 0 : libelleFamille!.hashCode) +
      (libelleImmo == null ? 0 : libelleImmo!.hashCode) +
      (sousLibelleFamille == null ? 0 : sousLibelleFamille!.hashCode) +
      (libelleComplementaire == null ? 0 : libelleComplementaire!.hashCode) +
      (niveau == null ? 0 : niveau!.hashCode) +
      (service == null ? 0 : service!.hashCode) +
      (sousFamille == null ? 0 : sousFamille!.hashCode) +
      (codeLocalisation == null ? 0 : codeLocalisation!.hashCode) +
      (libelleAgence == null ? 0 : libelleAgence!.hashCode) +
      (libelleLocalisation == null ? 0 : libelleLocalisation!.hashCode);

  @override
  String toString() =>
      'Codification[nInventaire=$nInventaire, idCodification=$idCodification, codeGuichet=$codeGuichet, departement=$departement, nSerie=$nSerie, direction=$direction, famille=$famille, libelleFamille=$libelleFamille, libelleImmo=$libelleImmo, sousLibelleFamille=$sousLibelleFamille, libelleComplementaire=$libelleComplementaire, niveau=$niveau, service=$service, sousFamille=$sousFamille, codeLocalisation=$codeLocalisation, libelleAgence=$libelleAgence, libelleLocalisation=$libelleLocalisation]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'n_inventaire'] = this.nInventaire;
    if (this.idCodification != null) {
      json[r'id_codification'] = this.idCodification;
    } else {
      json[r'id_codification'] = null;
    }
    if (this.codeGuichet != null) {
      json[r'code_guichet'] = this.codeGuichet;
    } else {
      json[r'code_guichet'] = null;
    }
    if (this.departement != null) {
      json[r'departement'] = this.departement;
    } else {
      json[r'departement'] = null;
    }
    if (this.nSerie != null) {
      json[r'n_serie'] = this.nSerie;
    } else {
      json[r'n_serie'] = null;
    }
    if (this.direction != null) {
      json[r'direction'] = this.direction;
    } else {
      json[r'direction'] = null;
    }
    if (this.famille != null) {
      json[r'famille'] = this.famille;
    } else {
      json[r'famille'] = null;
    }
    if (this.libelleFamille != null) {
      json[r'libelle_famille'] = this.libelleFamille;
    } else {
      json[r'libelle_famille'] = null;
    }
    if (this.libelleImmo != null) {
      json[r'libelle_immo'] = this.libelleImmo;
    } else {
      json[r'libelle_immo'] = null;
    }
    if (this.sousLibelleFamille != null) {
      json[r'sous_libelle_famille'] = this.sousLibelleFamille;
    } else {
      json[r'sous_libelle_famille'] = null;
    }
    if (this.libelleComplementaire != null) {
      json[r'libelle_complementaire'] = this.libelleComplementaire;
    } else {
      json[r'libelle_complementaire'] = null;
    }
    if (this.niveau != null) {
      json[r'niveau'] = this.niveau;
    } else {
      json[r'niveau'] = null;
    }
    if (this.service != null) {
      json[r'service'] = this.service;
    } else {
      json[r'service'] = null;
    }
    if (this.sousFamille != null) {
      json[r'sous_famille'] = this.sousFamille;
    } else {
      json[r'sous_famille'] = null;
    }
    if (this.codeLocalisation != null) {
      json[r'codeLocalisation'] = this.codeLocalisation;
    } else {
      json[r'codeLocalisation'] = null;
    }
    if (this.libelleAgence != null) {
      json[r'libelle_agence'] = this.libelleAgence;
    } else {
      json[r'libelle_agence'] = null;
    }
    if (this.libelleLocalisation != null) {
      json[r'libelle_localisation'] = this.libelleLocalisation;
    } else {
      json[r'libelle_localisation'] = null;
    }
    return json;
  }

  /// Returns a new [Codification] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Codification? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "Codification[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "Codification[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Codification(
        nInventaire: mapValueOfType<String>(json, r'n_inventaire')!,
        idCodification: mapValueOfType<int>(json, r'id_codification'),
        codeGuichet: mapValueOfType<String>(json, r'code_guichet'),
        departement: mapValueOfType<String>(json, r'departement'),
        nSerie: mapValueOfType<String>(json, r'n_serie'),
        direction: mapValueOfType<String>(json, r'direction'),
        famille: mapValueOfType<String>(json, r'famille'),
        libelleFamille: mapValueOfType<String>(json, r'libelle_famille'),
        libelleImmo: mapValueOfType<String>(json, r'libelle_immo'),
        sousLibelleFamille:
            mapValueOfType<String>(json, r'sous_libelle_famille'),
        libelleComplementaire:
            mapValueOfType<String>(json, r'libelle_complementaire'),
        niveau: mapValueOfType<String>(json, r'niveau'),
        service: mapValueOfType<String>(json, r'service'),
        sousFamille: mapValueOfType<String>(json, r'sous_famille'),
        codeLocalisation: mapValueOfType<String>(json, r'codeLocalisation'),
        libelleAgence: mapValueOfType<String>(json, r'libelle_agence'),
        libelleLocalisation:
            mapValueOfType<String>(json, r'libelle_localisation'),
      );
    }
    return null;
  }

  static List<Codification> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <Codification>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Codification.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Codification> mapFromJson(dynamic json) {
    final map = <String, Codification>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Codification.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Codification-objects as value to a dart map
  static Map<String, List<Codification>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<Codification>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Codification.listFromJson(
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
