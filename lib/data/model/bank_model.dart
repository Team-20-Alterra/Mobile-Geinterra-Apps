class BankModel {
  List<Data>? data;
  String? message;
  bool? status;

  BankModel({this.data, this.message, this.status});

  BankModel.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(new Data.fromJson(v));
      });
    }
    message = json['message'];
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
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
  String? owner;
  String? accountNumber;
  int? bankId;
  int? businnesId;
  Bank? bank;
  Businnes? businnes;

  Data(
      {this.iD,
      this.createdAt,
      this.updatedAt,
      this.deletedAt,
      this.owner,
      this.accountNumber,
      this.bankId,
      this.businnesId,
      this.bank,
      this.businnes});

  Data.fromJson(Map<String, dynamic> json) {
    iD = json['ID'];
    createdAt = json['CreatedAt'];
    updatedAt = json['UpdatedAt'];
    deletedAt = json['DeletedAt'];
    owner = json['owner'];
    accountNumber = json['account_number'];
    bankId = json['bank_id'];
    businnesId = json['businnes_id'];
    bank = json['Bank'] != null ? new Bank.fromJson(json['Bank']) : null;
    businnes = json['Businnes'] != null
        ? new Businnes.fromJson(json['Businnes'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['ID'] = this.iD;
    data['CreatedAt'] = this.createdAt;
    data['UpdatedAt'] = this.updatedAt;
    data['DeletedAt'] = this.deletedAt;
    data['owner'] = this.owner;
    data['account_number'] = this.accountNumber;
    data['bank_id'] = this.bankId;
    data['businnes_id'] = this.businnesId;
    if (this.bank != null) {
      data['Bank'] = this.bank!.toJson();
    }
    if (this.businnes != null) {
      data['Businnes'] = this.businnes!.toJson();
    }
    return data;
  }
}

class Bank {
  int? iD;
  String? createdAt;
  String? updatedAt;
  Null? deletedAt;
  String? name;
  String? code;
  String? logo;

  Bank(
      {this.iD,
      this.createdAt,
      this.updatedAt,
      this.deletedAt,
      this.name,
      this.code,
      this.logo});

  Bank.fromJson(Map<String, dynamic> json) {
    iD = json['ID'];
    createdAt = json['CreatedAt'];
    updatedAt = json['UpdatedAt'];
    deletedAt = json['DeletedAt'];
    name = json['name'];
    code = json['code'];
    logo = json['logo'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['ID'] = this.iD;
    data['CreatedAt'] = this.createdAt;
    data['UpdatedAt'] = this.updatedAt;
    data['DeletedAt'] = this.deletedAt;
    data['name'] = this.name;
    data['code'] = this.code;
    data['logo'] = this.logo;
    return data;
  }
}

class Businnes {
  int? iD;
  String? createdAt;
  String? updatedAt;
  Null? deletedAt;
  String? name;
  String? email;
  String? address;
  String? noTelp;
  String? type;
  String? logo;
  String? reminder;
  String? dueDate;
  int? userId;
  User? user;

  Businnes(
      {this.iD,
      this.createdAt,
      this.updatedAt,
      this.deletedAt,
      this.name,
      this.email,
      this.address,
      this.noTelp,
      this.type,
      this.logo,
      this.reminder,
      this.dueDate,
      this.userId,
      this.user});

  Businnes.fromJson(Map<String, dynamic> json) {
    iD = json['ID'];
    createdAt = json['CreatedAt'];
    updatedAt = json['UpdatedAt'];
    deletedAt = json['DeletedAt'];
    name = json['name'];
    email = json['email'];
    address = json['address'];
    noTelp = json['no_telp'];
    type = json['type'];
    logo = json['logo'];
    reminder = json['reminder'];
    dueDate = json['due_date'];
    userId = json['user_id'];
    user = json['User'] != null ? new User.fromJson(json['User']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['ID'] = this.iD;
    data['CreatedAt'] = this.createdAt;
    data['UpdatedAt'] = this.updatedAt;
    data['DeletedAt'] = this.deletedAt;
    data['name'] = this.name;
    data['email'] = this.email;
    data['address'] = this.address;
    data['no_telp'] = this.noTelp;
    data['type'] = this.type;
    data['logo'] = this.logo;
    data['reminder'] = this.reminder;
    data['due_date'] = this.dueDate;
    data['user_id'] = this.userId;
    if (this.user != null) {
      data['User'] = this.user!.toJson();
    }
    return data;
  }
}

class User {
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

  User(
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

  User.fromJson(Map<String, dynamic> json) {
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
