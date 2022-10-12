class User {
  String? id;
  String? userName;
  String? fullName;
  String? description;
  String? phone;
  String? gender;
  String? password;
  String? buildingID;

  User(
      {this.id,
      this.userName,
      this.fullName,
      this.description,
      this.phone,
      this.gender,
      this.password,
      this.buildingID});

  User.fromJson(Map<dynamic, dynamic> json) {
    id = json['id'];
    userName = json['userName'];
    fullName = json['fullName'];
    description = json['description'];
    phone = json['phone'];
    gender = json['gender'];
    password = json['password'];
    buildingID = json['buildingID'];
  }

  Map<dynamic, dynamic> toJson() {
    final Map<dynamic, dynamic> data = <dynamic, dynamic>{};
    data['id'] = id;
    data['userName'] = userName;
    data['fullName'] = fullName;
    data['description'] = description;
    data['phone'] = phone;
    data['gender'] = gender;
    data['password'] = password;
    data['buildingID'] = buildingID;
    return data;
  }
}
