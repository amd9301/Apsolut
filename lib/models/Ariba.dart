/*
* Copyright 2021 Amazon.com, Inc. or its affiliates. All Rights Reserved.
*
* Licensed under the Apache License, Version 2.0 (the "License").
* You may not use this file except in compliance with the License.
* A copy of the License is located at
*
*  http://aws.amazon.com/apache2.0
*
* or in the "license" file accompanying this file. This file is distributed
* on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
* express or implied. See the License for the specific language governing
* permissions and limitations under the License.
*/

// NOTE: This file is generated and may not follow lint rules defined in your app
// Generated files can be excluded from analysis in analysis_options.yaml
// For more info, see: https://dart.dev/guides/language/analysis-options#excluding-code-from-analysis

// ignore_for_file: public_member_api_docs, file_names, unnecessary_new, prefer_if_null_operators, prefer_const_constructors, slash_for_doc_comments, annotate_overrides, non_constant_identifier_names, unnecessary_string_interpolations, prefer_adjacent_string_concatenation, unnecessary_const, dead_code

import 'package:amplify_datastore_plugin_interface/amplify_datastore_plugin_interface.dart';
import 'package:flutter/foundation.dart';

/** This is an auto generated class representing the Ariba type in your schema. */
@immutable
class Ariba extends Model {
  static const classType = const _AribaModelType();
  final String id;
  final int noOfPeople;
  final int workdays;

  @override
  getInstanceType() => classType;

  @override
  String getId() {
    return id;
  }

  const Ariba._internal({@required this.id, this.noOfPeople, this.workdays});

  factory Ariba({String id, int noOfPeople, int workdays}) {
    return Ariba._internal(
        id: id == null ? UUID.getUUID() : id,
        noOfPeople: noOfPeople,
        workdays: workdays);
  }

  bool equals(Object other) {
    return this == other;
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Ariba &&
        id == other.id &&
        noOfPeople == other.noOfPeople &&
        workdays == other.workdays;
  }

  @override
  int get hashCode => toString().hashCode;

  @override
  String toString() {
    var buffer = new StringBuffer();

    buffer.write("Ariba {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("noOfPeople=" +
        (noOfPeople != null ? noOfPeople.toString() : "null") +
        ", ");
    buffer
        .write("workdays=" + (workdays != null ? workdays.toString() : "null"));
    buffer.write("}");

    return buffer.toString();
  }

  Ariba copyWith({String id, int noOfPeople, int workdays}) {
    return Ariba(
        id: id ?? this.id,
        noOfPeople: noOfPeople ?? this.noOfPeople,
        workdays: workdays ?? this.workdays);
  }

  Ariba.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        noOfPeople = (json['noOfPeople'] as num)?.toInt(),
        workdays = (json['workdays'] as num)?.toInt();

  Map<String, dynamic> toJson() =>
      {'id': id, 'noOfPeople': noOfPeople, 'workdays': workdays};

  static final QueryField ID = QueryField(fieldName: "ariba.id");
  static final QueryField NOOFPEOPLE = QueryField(fieldName: "noOfPeople");
  static final QueryField WORKDAYS = QueryField(fieldName: "workdays");
  static var schema =
      Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "Ariba";
    modelSchemaDefinition.pluralName = "Aribas";

    modelSchemaDefinition.authRules = [
      AuthRule(authStrategy: AuthStrategy.PUBLIC, operations: [
        ModelOperation.CREATE,
        ModelOperation.UPDATE,
        ModelOperation.DELETE,
        ModelOperation.READ
      ])
    ];

    modelSchemaDefinition.addField(ModelFieldDefinition.id());

    modelSchemaDefinition.addField(ModelFieldDefinition.field(
        key: Ariba.NOOFPEOPLE,
        isRequired: false,
        ofType: ModelFieldType(ModelFieldTypeEnum.int)));

    modelSchemaDefinition.addField(ModelFieldDefinition.field(
        key: Ariba.WORKDAYS,
        isRequired: false,
        ofType: ModelFieldType(ModelFieldTypeEnum.int)));
  });
}

class _AribaModelType extends ModelType<Ariba> {
  const _AribaModelType();

  @override
  Ariba fromJson(Map<String, dynamic> jsonData) {
    return Ariba.fromJson(jsonData);
  }
}
