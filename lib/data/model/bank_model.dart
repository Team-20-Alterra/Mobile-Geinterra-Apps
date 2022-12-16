class BankModel {
  List<Bank>? bank;
  String? status;

  BankModel({this.bank, this.status});

  BankModel.fromJson(Map<String, dynamic> json) {
    if (json['bank'] != null) {
      bank = <Bank>[];
      json['bank'].forEach((v) {
        bank!.add(new Bank.fromJson(v));
      });
    }
    status = json['status'];
  }

  get bankModel => null;

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.bank != null) {
      data['bank'] = this.bank!.map((v) => v.toJson()).toList();
    }
    data['status'] = this.status;
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
