class User {
  String? id;
  String? userName;
  String? fullName;
  String? description;
  String? phone;
  String? gender;
  String? buildingId;

  User({
    this.id,
    this.userName,
    this.fullName,
    this.description,
    this.phone,
    this.gender,
    this.buildingId,
  });

  User.fromJson(Map<dynamic, dynamic> json) {
    id = json['id'];
    userName = json['userName'];
    fullName = json['fullName'];
    description = json['description'];
    phone = json['phone'];
    gender = json['gender'];
    buildingId = json['buildingId'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['userName'] = userName;
    data['fullName'] = fullName;
    data['description'] = description;
    data['phone'] = phone;
    data['gender'] = gender;
    data['buildingId'] = buildingId;
    return data;
  }
}
