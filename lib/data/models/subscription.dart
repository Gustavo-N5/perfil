// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Subscription {
  String userType;
  String? createdAt;
  String userId;
  String? updatedAt;
  String subscriptionStatus;
  String id;
  String subscriptionType;

  Subscription({
    required this.userType,
    this.createdAt,
    required this.userId,
    this.updatedAt,
    required this.subscriptionStatus,
    required this.id,
    required this.subscriptionType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'userType': userType,
      'createdAt': createdAt,
      'userId': userId,
      'updatedAt': updatedAt,
      'subscriptionStatus': subscriptionStatus,
      'id': id,
      'subscriptionType': subscriptionType,
    };
  }

  factory Subscription.fromMap(Map<String, dynamic> map) {
    return Subscription(
      userType: map['userType'] as String,
      createdAt: map['createdAt'] != null ? map['createdAt'] as String : null,
      userId: map['userId'] as String,
      updatedAt: map['updatedAt'] != null ? map['updatedAt'] as String : null,
      subscriptionStatus: map['subscriptionStatus'] as String,
      id: map['id'] as String,
      subscriptionType: map['subscriptionType'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Subscription.fromJson(String source) =>
      Subscription.fromMap(json.decode(source) as Map<String, dynamic>);
}
