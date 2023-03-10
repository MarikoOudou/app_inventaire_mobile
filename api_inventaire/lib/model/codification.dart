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
    this.id,
    this.idCodification,
    required this.nInventaire,
    this.codeGuichet,
    this.libelleImmo,
    this.libelle_complementaire,
    this.departement,
    this.nSerie,
    this.direction,
    this.famille,
    this.libelleFamille,
    this.sousLibelleFamille,
    this.niveau,
    this.service,
    this.sousFamille,
    this.codeLocalisation,
    this.libelleAgence,
    this.libelleLocalisation,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? idCodification;
  int? id;

  String nInventaire;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? codeGuichet;
  String? libelle_complementaire;
  String? libelleImmo;

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
  String? sousLibelleFamille;

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
  bool operator ==(Object other) => identical(this, other) || other is Codification &&
     other.idCodification == idCodification &&
     other.id == id &&
     other.nInventaire == nInventaire &&
     other.codeGuichet == codeGuichet &&
     other.libelle_complementaire == libelle_complementaire &&
     other.libelleImmo == libelleImmo &&
     other.departement == departement &&
     other.nSerie == nSerie &&
     other.direction == direction &&
     other.famille == famille &&
     other.libelleFamille == libelleFamille &&
     other.sousLibelleFamille == sousLibelleFamille &&
     other.niveau == niveau &&
     other.service == service &&
     other.sousFamille == sousFamille &&
     other.codeLocalisation == codeLocalisation &&
     other.libelleAgence == libelleAgence &&
     other.libelleLocalisation == libelleLocalisation;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (idCodification == null ? 0 : idCodification!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (nInventaire.hashCode) +
    (codeGuichet == null ? 0 : codeGuichet!.hashCode) +
    (libelle_complementaire == null ? 0 : libelle_complementaire!.hashCode) +
    (libelleImmo == null ? 0 : libelleImmo!.hashCode) +
    (departement == null ? 0 : departement!.hashCode) +
    (nSerie == null ? 0 : nSerie!.hashCode) +
    (direction == null ? 0 : direction!.hashCode) +
    (famille == null ? 0 : famille!.hashCode) +
    (libelleFamille == null ? 0 : libelleFamille!.hashCode) +
    (sousLibelleFamille == null ? 0 : sousLibelleFamille!.hashCode) +
    (niveau == null ? 0 : niveau!.hashCode) +
    (service == null ? 0 : service!.hashCode) +
    (sousFamille == null ? 0 : sousFamille!.hashCode) +
    (codeLocalisation == null ? 0 : codeLocalisation!.hashCode) +
    (libelleAgence == null ? 0 : libelleAgence!.hashCode) +
    (libelleLocalisation == null ? 0 : libelleLocalisation!.hashCode);

  @override
  String toString() => 'Codification[id=$id,idCodification=$idCodification, nInventaire=$nInventaire, codeGuichet=$codeGuichet, departement=$departement, nSerie=$nSerie, direction=$direction, famille=$famille, libelleFamille=$libelleFamille, sousLibelleFamille=$sousLibelleFamille, niveau=$niveau, service=$service, sousFamille=$sousFamille, codeLocalisation=$codeLocalisation, libelleAgence=$libelleAgence, libelleLocalisation=$libelleLocalisation]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
    if (idCodification != null) {
      _json[r'id_codification'] = idCodification;
    }
        if (id != null) {
      _json[r'id'] = id;
    }
      _json[r'n_inventaire'] = nInventaire;
    if (codeGuichet != null) {
      _json[r'code_guichet'] = codeGuichet;
    }
        if (libelle_complementaire != null) {
      _json[r'libelle_complementaire'] = libelle_complementaire;
    }
    if (libelleImmo != null) {
      _json[r'libelle_immo'] = libelleImmo;
    }
    if (departement != null) {
      _json[r'departement'] = departement;
    }
    if (nSerie != null) {
      _json[r'n_serie'] = nSerie;
    }
    if (direction != null) {
      _json[r'direction'] = direction;
    }
    if (famille != null) {
      _json[r'famille'] = famille;
    }
    if (libelleFamille != null) {
      _json[r'libelle_famille'] = libelleFamille;
    }
    if (sousLibelleFamille != null) {
      _json[r'sous_libelle_famille'] = sousLibelleFamille;
    }
    if (niveau != null) {
      _json[r'niveau'] = niveau;
    }
    if (service != null) {
      _json[r'service'] = service;
    }
    if (sousFamille != null) {
      _json[r'sous_famille'] = sousFamille;
    }
    if (codeLocalisation != null) {
      _json[r'code_localisation'] = codeLocalisation;
    }
    if (libelleAgence != null) {
      _json[r'libelle_agence'] = libelleAgence;
    }
    if (libelleLocalisation != null) {
      _json[r'libelle_localisation'] = libelleLocalisation;
    }
    return _json;
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
          assert(json.containsKey(key), 'Required key "Codification[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Codification[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Codification(
        id: mapValueOfType<int>(json, r'id'),
        idCodification: mapValueOfType<int>(json, r'id_codification'),
        nInventaire: mapValueOfType<String>(json, r'n_inventaire')!,
        codeGuichet: mapValueOfType<String>(json, r'code_guichet'),
        libelle_complementaire: mapValueOfType<String>(json, r'libelle_complementaire'),
        libelleImmo: mapValueOfType<String>(json, r'libelle_immo'),
        departement: mapValueOfType<String>(json, r'departement'),
        nSerie: mapValueOfType<String>(json, r'n_serie'),
        direction: mapValueOfType<String>(json, r'direction'),
        famille: mapValueOfType<String>(json, r'famille'),
        libelleFamille: mapValueOfType<String>(json, r'libelle_famille'),
        sousLibelleFamille: mapValueOfType<String>(json, r'sous_libelle_famille'),
        niveau: mapValueOfType<String>(json, r'niveau'),
        service: mapValueOfType<String>(json, r'service'),
        sousFamille: mapValueOfType<String>(json, r'sous_famille'),
        codeLocalisation: mapValueOfType<String>(json, r'code_localisation'),
        libelleAgence: mapValueOfType<String>(json, r'libelle_agence'),
        libelleLocalisation: mapValueOfType<String>(json, r'libelle_localisation'),
      );
    }
    return null;
  }

  static List<Codification>? listFromJson(dynamic json, {bool growable = false,}) {
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
  static Map<String, List<Codification>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Codification>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Codification.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'n_inventaire',
  };
}

