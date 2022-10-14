class User {
  String? id;
  String? username;
  String? fullName;
  String? password;
  String? email;
  String? phone;
  String? image;

  User({
    this.id,
    this.username,
    this.fullName,
    this.password,
    this.email,
    this.phone,
    this.image,
  });

  User.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    username = json['username'];
    fullName = json['fullName'];
    password = json['password'];
    email = json['email'];
    phone = json['phone'];
    image = json['image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['username'] = username;
    data['fullName'] = fullName;
    data['password'] = password;
    data['email'] = email;
    data['phone'] = phone;
    data['image'] = image;
    return data;
  }
}
