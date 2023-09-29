// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:perfil/data/models/pets.dart';
import 'package:perfil/data/models/subscription.dart';
import 'package:perfil/data/models/user.dart';

class Perfil {
  List<Pets> pets;
  User user;
  Subscription subscription;

  Perfil({
    required this.pets,
    required this.user,
    required this.subscription,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'pets': pets.map((x) => x.toMap()).toList(),
      'user': user.toMap(),
      'subscription': subscription.toMap(),
    };
  }

  factory Perfil.fromMap(Map<String, dynamic> map) {
    return Perfil(
      pets: List<Pets>.from(
        (map['pets'] as List<dynamic>).map<Pets>(
          (x) => Pets.fromMap(x as Map<String, dynamic>),
        ),
      ),
      user: User.fromMap(map['user'] as Map<String, dynamic>),
      subscription:
          Subscription.fromMap(map['subscription'] as Map<String, dynamic>),
    );
  }

  String toJson() => json.encode(toMap());

  factory Perfil.fromJson(String source) =>
      Perfil.fromMap(json.decode(source) as Map<String, dynamic>);
}
