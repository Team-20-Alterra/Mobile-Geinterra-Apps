import 'dart:convert';
import 'dart:ffi';

ResponseInvoices responseInvoicesFromJson(String str) =>
    ResponseInvoices.fromJson(json.decode(str));

String responseInvoicesToJson(ResponseInvoices data) =>
    json.encode(data.toJson());

class ResponseInvoices {
  ResponseInvoices({
    required this.invoices,
    required this.status,
  });

  List<Invoice> invoices;
  String status;

  factory ResponseInvoices.fromJson(Map<String, dynamic> json) =>
      ResponseInvoices(
        invoices: List<Invoice>.from(
            json["invoices"].map((x) => Invoice.fromJson(x))),
        status: json["status"],
      );

  Map<String, dynamic> toJson() => {
        "invoices": List<dynamic>.from(invoices.map((x) => x.toJson())),
        "status": status,
      };
}

class Invoice {
  Invoice({
    required this.id,
    required this.createdAt,
    required this.updatedAt,
    this.deletedAt,
    required this.noInvoice,
    required this.price,
    required this.payment,
    required this.type,
    required this.status,
    required this.total,
    required this.subTotal,
    required this.item,
  });

  int id;
  DateTime createdAt;
  DateTime updatedAt;
  dynamic deletedAt;
  String noInvoice;
  int price;
  String payment;
  String type;
  String status;
  int total;
  int subTotal;
  List<dynamic> item;

  factory Invoice.fromJson(Map<String, dynamic> json) => Invoice(
        id: json["ID"],
        createdAt: DateTime.parse(json["CreatedAt"]),
        updatedAt: DateTime.parse(json["UpdatedAt"]),
        deletedAt: json["DeletedAt"],
        noInvoice: json["no_invoice"],
        price: json["price"],
        payment: json["payment"],
        type: json["type"],
        status: json["status"],
        total: json["total"],
        subTotal: json["sub_total"],
        item: List<dynamic>.from(json["Item"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "ID": id,
        "CreatedAt": createdAt.toIso8601String(),
        "UpdatedAt": updatedAt.toIso8601String(),
        "DeletedAt": deletedAt,
        "no_invoice": noInvoice,
        "price": price,
        "payment": payment,
        "type": type,
        "status": status,
        "total": total,
        "sub_total": subTotal,
        "Item": List<dynamic>.from(item.map((x) => x)),
      };
}

class User {
  User({
    required this.id,
    required this.createdAt,
    required this.updatedAt,
    required this.deletedAt,
    required this.name,
    required this.date,
    required this.email,
    required this.gender,
    required this.phone,
    required this.address,
    required this.photo,
    required this.username,
    required this.password,
    required this.role,
    required this.passwordResetToken,
    required this.passwordResetAt,
  });

  int id;
  DateTime createdAt;
  DateTime updatedAt;
  dynamic deletedAt;
  String name;
  String date;
  String email;
  String gender;
  String phone;
  String address;
  String photo;
  String username;
  String password;
  String role;
  String passwordResetToken;
  DateTime passwordResetAt;

  factory User.fromJson(Map<String, dynamic> json) => User(
        id: json["ID"],
        createdAt: DateTime.parse(json["CreatedAt"]),
        updatedAt: DateTime.parse(json["UpdatedAt"]),
        deletedAt: json["DeletedAt"],
        name: json["name"],
        date: json["date"],
        email: json["email"],
        gender: json["gender"],
        phone: json["phone"],
        address: json["address"],
        photo: json["photo"],
        username: json["username"],
        password: json["password"],
        role: json["role"],
        passwordResetToken: json["PasswordResetToken"],
        passwordResetAt: DateTime.parse(json["PasswordResetAt"]),
      );

  Map<String, dynamic> toJson() => {
        "ID": id,
        "CreatedAt": createdAt.toIso8601String(),
        "UpdatedAt": updatedAt.toIso8601String(),
        "DeletedAt": deletedAt,
        "name": name,
        "date": date,
        "email": email,
        "gender": gender,
        "phone": phone,
        "address": address,
        "photo": photo,
        "username": username,
        "password": password,
        "role": role,
        "PasswordResetToken": passwordResetToken,
        "PasswordResetAt": passwordResetAt.toIso8601String(),
      };
}
