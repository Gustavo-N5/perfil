// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class User {
  String email;
  String generalPetID;
  String? thirdPartyLoginIdToken;
  String? pushAllow;
  String fullname;
  String? thirdPartyLoginServerAuthCode;
  String? photoUrl;
  String updatedDate;
  String createdDate;
  String? isThirdPartyLogin;
  String? phoneNumber;
  String id;
  String nickname;
  String? birthdate;
  String? gender;
  String password;

  User({
    required this.email,
    required this.generalPetID,
    this.thirdPartyLoginIdToken,
    this.pushAllow,
    required this.fullname,
    this.thirdPartyLoginServerAuthCode,
    this.photoUrl,
    required this.updatedDate,
    required this.createdDate,
    this.isThirdPartyLogin,
    this.phoneNumber,
    required this.id,
    required this.nickname,
    this.birthdate,
    this.gender,
    required this.password,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'email': email,
      'generalPetID': generalPetID,
      'thirdPartyLoginIdToken': thirdPartyLoginIdToken,
      'pushAllow': pushAllow,
      'fullname': fullname,
      'thirdPartyLoginServerAuthCode': thirdPartyLoginServerAuthCode,
      'photoUrl': photoUrl,
      'updatedDate': updatedDate,
      'createdDate': createdDate,
      'isThirdPartyLogin': isThirdPartyLogin,
      'phoneNumber': phoneNumber,
      'id': id,
      'nickname': nickname,
      'birthdate': birthdate,
      'gender': gender,
      'password': password,
    };
  }

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      email: map['email'] as String,
      generalPetID: map['generalPetID'] as String,
      thirdPartyLoginIdToken: map['thirdPartyLoginIdToken'] != null
          ? map['thirdPartyLoginIdToken'] as String
          : null,
      pushAllow: map['pushAllow'] != null ? map['pushAllow'] as String : null,
      fullname: map['fullname'] as String,
      thirdPartyLoginServerAuthCode:
          map['thirdPartyLoginServerAuthCode'] != null
              ? map['thirdPartyLoginServerAuthCode'] as String
              : null,
      photoUrl: map['photoUrl'] != null ? map['photoUrl'] as String : null,
      updatedDate: map['updatedDate'] as String,
      createdDate: map['createdDate'] as String,
      isThirdPartyLogin: map['isThirdPartyLogin'] != null
          ? map['isThirdPartyLogin'] as String
          : null,
      phoneNumber:
          map['phoneNumber'] != null ? map['phoneNumber'] as String : null,
      id: map['id'] as String,
      nickname: map['nickname'] as String,
      birthdate: map['birthdate'] != null ? map['birthdate'] as String : null,
      gender: map['gender'] != null ? map['gender'] as String : null,
      password: map['password'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory User.fromJson(String source) =>
      User.fromMap(json.decode(source) as Map<String, dynamic>);
}
