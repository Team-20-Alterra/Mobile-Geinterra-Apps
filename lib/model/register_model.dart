class RegisterModel {
  bool? data;
  String? message;
  Status? status;

  RegisterModel({this.data, this.message, this.status});

  RegisterModel.fromJson(Map<String, dynamic> json) {
    data = json['data'];
    message = json['message'];
    status =
        json['status'] != null ? new Status.fromJson(json['status']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['data'] = this.data;
    data['message'] = this.message;
    if (this.status != null) {
      data['status'] = this.status!.toJson();
    }
    return data;
  }
}

class Status {
  int? iD;
  String? createdAt;
  String? updatedAt;
  Null? deletedAt;
  String? name;
  String? date;
  String? email;
  String? gender;
  String? phone;
  String? address;
  String? photo;
  String? username;
  String? password;
  String? role;

  Status(
      {this.iD,
      this.createdAt,
      this.updatedAt,
      this.deletedAt,
      this.name,
      this.date,
      this.email,
      this.gender,
      this.phone,
      this.address,
      this.photo,
      this.username,
      this.password,
      this.role});

  Status.fromJson(Map<String, dynamic> json) {
    iD = json['ID'];
    createdAt = json['CreatedAt'];
    updatedAt = json['UpdatedAt'];
    deletedAt = json['DeletedAt'];
    name = json['name'];
    date = json['date'];
    email = json['email'];
    gender = json['gender'];
    phone = json['phone'];
    address = json['address'];
    photo = json['photo'];
    username = json['username'];
    password = json['password'];
    role = json['role'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['ID'] = this.iD;
    data['CreatedAt'] = this.createdAt;
    data['UpdatedAt'] = this.updatedAt;
    data['DeletedAt'] = this.deletedAt;
    data['name'] = this.name;
    data['date'] = this.date;
    data['email'] = this.email;
    data['gender'] = this.gender;
    data['phone'] = this.phone;
    data['address'] = this.address;
    data['photo'] = this.photo;
    data['username'] = this.username;
    data['password'] = this.password;
    data['role'] = this.role;
    return data;
  }
}
