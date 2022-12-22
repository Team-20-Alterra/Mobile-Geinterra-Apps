class NotifModel {
  List<Data>? data;
  String? message;
  bool? status;

  NotifModel({this.data, this.message, this.status});

  NotifModel.fromJson(Map<String, dynamic> json) {
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
  String? title;
  String? body;
  bool? isReadAmin;
  bool? isReadUser;
  String? status;
  int? invoiceId;
  Invoice? invoice;

  Data(
      {this.iD,
      this.createdAt,
      this.updatedAt,
      this.deletedAt,
      this.title,
      this.body,
      this.isReadAmin,
      this.isReadUser,
      this.status,
      this.invoiceId,
      this.invoice});

  Data.fromJson(Map<String, dynamic> json) {
    iD = json['ID'];
    createdAt = json['CreatedAt'];
    updatedAt = json['UpdatedAt'];
    deletedAt = json['DeletedAt'];
    title = json['title'];
    body = json['body'];
    isReadAmin = json['is_readAmin'];
    isReadUser = json['is_readUser'];
    status = json['status'];
    invoiceId = json['invoice_id'];
    invoice =
        json['Invoice'] != null ? new Invoice.fromJson(json['Invoice']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['ID'] = this.iD;
    data['CreatedAt'] = this.createdAt;
    data['UpdatedAt'] = this.updatedAt;
    data['DeletedAt'] = this.deletedAt;
    data['title'] = this.title;
    data['body'] = this.body;
    data['is_readAmin'] = this.isReadAmin;
    data['is_readUser'] = this.isReadUser;
    data['status'] = this.status;
    data['invoice_id'] = this.invoiceId;
    if (this.invoice != null) {
      data['Invoice'] = this.invoice!.toJson();
    }
    return data;
  }
}

class Invoice {
  int? iD;
  String? createdAt;
  String? updatedAt;
  Null? deletedAt;
  int? price;
  String? payment;
  String? type;
  String? status;
  int? total;
  String? discount;
  int? subTotal;
  String? note;
  int? userId;
  int? businnesId;
  Businnes? businnes;
  Admin? customer;
  List<Item>? item;
  List<Null>? checkout;

  Invoice(
      {this.iD,
      this.createdAt,
      this.updatedAt,
      this.deletedAt,
      this.price,
      this.payment,
      this.type,
      this.status,
      this.total,
      this.discount,
      this.subTotal,
      this.note,
      this.userId,
      this.businnesId,
      this.businnes,
      this.customer,
      this.item,
      this.checkout});

  Invoice.fromJson(Map<String, dynamic> json) {
    iD = json['ID'];
    createdAt = json['CreatedAt'];
    updatedAt = json['UpdatedAt'];
    deletedAt = json['DeletedAt'];
    price = json['price'];
    payment = json['payment'];
    type = json['type'];
    status = json['status'];
    total = json['total'];
    discount = json['discount'];
    subTotal = json['sub_total'];
    note = json['note'];
    userId = json['user_id'];
    businnesId = json['businnes_id'];
    businnes = json['Businnes'] != null
        ? new Businnes.fromJson(json['Businnes'])
        : null;
    customer =
        json['customer'] != null ? new Admin.fromJson(json['customer']) : null;
    if (json['Item'] != null) {
      item = <Item>[];
      json['Item'].forEach((v) {
        item!.add(new Item.fromJson(v));
      });
    }
    // if (json['Checkout'] != null) {
    //   checkout = <Null>[];
    //   json['Checkout'].forEach((v) {
    //     checkout!.add(new Null.fromJson(v));
    //   });
    // }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['ID'] = this.iD;
    data['CreatedAt'] = this.createdAt;
    data['UpdatedAt'] = this.updatedAt;
    data['DeletedAt'] = this.deletedAt;
    data['price'] = this.price;
    data['payment'] = this.payment;
    data['type'] = this.type;
    data['status'] = this.status;
    data['total'] = this.total;
    data['discount'] = this.discount;
    data['sub_total'] = this.subTotal;
    data['note'] = this.note;
    data['user_id'] = this.userId;
    data['businnes_id'] = this.businnesId;
    if (this.businnes != null) {
      data['Businnes'] = this.businnes!.toJson();
    }
    if (this.customer != null) {
      data['customer'] = this.customer!.toJson();
    }
    if (this.item != null) {
      data['Item'] = this.item!.map((v) => v.toJson()).toList();
    }
    // if (this.checkout != null) {
    //   data['Checkout'] = this.checkout!.map((v) => v.toJson()).toList();
    // }
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
  int? userId;
  Admin? admin;

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
      this.userId,
      this.admin});

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
    userId = json['user_id'];
    admin = json['admin'] != null ? new Admin.fromJson(json['admin']) : null;
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
    data['user_id'] = this.userId;
    if (this.admin != null) {
      data['admin'] = this.admin!.toJson();
    }
    return data;
  }
}

class Admin {
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

  Admin(
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

  Admin.fromJson(Map<String, dynamic> json) {
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

class Item {
  int? iD;
  String? createdAt;
  String? updatedAt;
  Null? deletedAt;
  String? name;
  int? amount;
  int? unitPrice;
  int? totalPrice;
  int? invoiceId;

  Item(
      {this.iD,
      this.createdAt,
      this.updatedAt,
      this.deletedAt,
      this.name,
      this.amount,
      this.unitPrice,
      this.totalPrice,
      this.invoiceId});

  Item.fromJson(Map<String, dynamic> json) {
    iD = json['ID'];
    createdAt = json['CreatedAt'];
    updatedAt = json['UpdatedAt'];
    deletedAt = json['DeletedAt'];
    name = json['name'];
    amount = json['amount'];
    unitPrice = json['unit_price'];
    totalPrice = json['total_price'];
    invoiceId = json['invoice_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['ID'] = this.iD;
    data['CreatedAt'] = this.createdAt;
    data['UpdatedAt'] = this.updatedAt;
    data['DeletedAt'] = this.deletedAt;
    data['name'] = this.name;
    data['amount'] = this.amount;
    data['unit_price'] = this.unitPrice;
    data['total_price'] = this.totalPrice;
    data['invoice_id'] = this.invoiceId;
    return data;
  }
}
