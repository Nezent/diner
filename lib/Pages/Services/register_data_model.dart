// To parse this JSON data, do
//
//     final registerDataModel = registerDataModelFromJson(jsonString);

import 'dart:convert';

RegisterDataModel registerDataModelFromJson(String str) =>
    RegisterDataModel.fromJson(json.decode(str));

String registerDataModelToJson(RegisterDataModel data) =>
    json.encode(data.toJson());

class RegisterDataModel {
  String name;
  String email;
  String username;
  String password;

  RegisterDataModel({
    required this.name,
    required this.email,
    required this.username,
    required this.password,
  });

  factory RegisterDataModel.fromJson(Map<String, dynamic> json) =>
      RegisterDataModel(
        name: json["name"],
        email: json["email"],
        username: json["username"],
        password: json["password"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "email": email,
        "username": username,
        "password": password,
      };
}
