import 'dart:convert';

/// TODO refactor to be in entity feature
class EntryCountParams {
  String entityId;
  String normalizeName;
  dynamic value;
  String? entryId;
  bool isState;

  EntryCountParams({
    required this.entityId,
    required this.normalizeName,
    this.entryId,
    this.isState = false,
    required this.value,
  });

  Map<String, dynamic> toJson() => {
        "where": json.encode({
          "id": {"neq": entryId},
          "and": [
            {
              "value.$normalizeName": {"eq": value}
            }
          ]
        })
      };
}
