class LoginModel {
  Login? data;
  String? message;
  bool? status;

  LoginModel({this.data, this.message, this.status});

  LoginModel.fromJson(Map<String, dynamic> json) {
    data = json['data'] != null ? new Login.fromJson(json['data']) : null;
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

class Login {
  int? id;
  String? username;
  String? email;
  String? role;
  String? token;

  Login({this.id, this.username, this.email, this.role, this.token});

  Login.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    username = json['username'];
    email = json['email'];
    role = json['role'];
    token = json['token'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['username'] = this.username;
    data['email'] = this.email;
    data['role'] = this.role;
    data['token'] = this.token;
    return data;
  }
}
