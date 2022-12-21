// To parse this JSON data, do
//
//     final responseBanks = responseBanksFromJson(jsonString);

import 'dart:convert';

ResponseBanks responseBanksFromJson(String str) =>
    ResponseBanks.fromJson(json.decode(str));

String responseBanksToJson(ResponseBanks data) => json.encode(data.toJson());

class ResponseBanks {
  ResponseBanks({
    required this.data,
    required this.message,
    required this.status,
  });

  List<Bank> data;
  String message;
  bool status;

  factory ResponseBanks.fromJson(Map<String, dynamic> json) => ResponseBanks(
        data: List<Bank>.from(json["data"].map((x) => Bank.fromJson(x))),
        message: json["message"],
        status: json["status"],
      );

  Map<String, dynamic> toJson() => {
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
        "message": message,
        "status": status,
      };
}

class Bank {
  Bank({
    required this.id,
    required this.name,
    required this.code,
    required this.logo,
  });

  int id;
  String name;
  String code;
  String logo;

  factory Bank.fromJson(Map<String, dynamic> json) => Bank(
        id: json["id"],
        name: json["name"],
        code: json["code"],
        logo: json["logo"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "code": code,
        "logo": logo,
      };
}
