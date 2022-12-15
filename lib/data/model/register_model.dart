class RegisterModel {
  Data? data;
  String? message;
  bool? status;

  RegisterModel({this.data, this.message, this.status});

  RegisterModel.fromJson(Map<String, dynamic> json) {
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
    message = json['message'];
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    data['message'] = this.message;
    data['status'] = this.status;
    return data;
  }
}

class Data {
  int? iD;
  String? createdAt;
  String? updatedAt;
  Null? deletedAt;
  String? name;
  String? email;
  String? phone;
  String? address;
  String? photo;
  String? password;
  String? role;
  String? passwordResetToken;
  String? passwordResetAt;

  Data(
      {this.iD,
      this.createdAt,
      this.updatedAt,
      this.deletedAt,
      this.name,
      this.email,
      this.phone,
      this.address,
      this.photo,
      this.password,
      this.role,
      this.passwordResetToken,
      this.passwordResetAt});

  Data.fromJson(Map<String, dynamic> json) {
    iD = json['ID'];
    createdAt = json['CreatedAt'];
    updatedAt = json['UpdatedAt'];
    deletedAt = json['DeletedAt'];
    name = json['name'];
    email = json['email'];
    phone = json['phone'];
    address = json['address'];
    photo = json['photo'];
    password = json['password'];
    role = json['role'];
    passwordResetToken = json['PasswordResetToken'];
    passwordResetAt = json['PasswordResetAt'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['ID'] = this.iD;
    data['CreatedAt'] = this.createdAt;
    data['UpdatedAt'] = this.updatedAt;
    data['DeletedAt'] = this.deletedAt;
    data['name'] = this.name;
    data['email'] = this.email;
    data['phone'] = this.phone;
    data['address'] = this.address;
    data['photo'] = this.photo;
    data['password'] = this.password;
    data['role'] = this.role;
    data['PasswordResetToken'] = this.passwordResetToken;
    data['PasswordResetAt'] = this.passwordResetAt;
    return data;
  }
}
