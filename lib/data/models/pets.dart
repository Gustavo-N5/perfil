import 'dart:convert';

class Pets {
  String id;

  Pets({required this.id});

  Map<String, dynamic> toMap() {
    return {
      "id": id,
    };
  }

  factory Pets.fromMap(Map<String, dynamic> map) {
    return Pets(
      id: map["id"],
    );
  }

  String toJson() => jsonEncode(toMap());

  factory Pets.fromJson(String json) => Pets.fromMap(jsonDecode(json));
}
