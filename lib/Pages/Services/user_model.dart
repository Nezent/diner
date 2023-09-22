import 'dart:convert';

import 'package:mongo_dart/mongo_dart.dart';

UserModel userModelFromJson(String str) => UserModel.fromJson(json.decode(str));

String userModelToJson(UserModel data) => json.encode(data.toJson());

class UserModel {
  ObjectId? id;
  String name;
  String email;
  String username;
  String password;

  UserModel({
    required this.id,
    required this.name,
    required this.email,
    required this.username,
    required this.password,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
        id: json["_id"],
        name: json["name"],
        email: json["email"],
        username: json["username"],
        password: json["password"],
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "name": name,
        "email": email,
        "username": username,
        "password": password,
      };
}
