class User {
  String? id;
  String? fullName;
  String? description;
  String? phone;
  String? gender;
  String? buildingID;

  User({
    this.id,
    this.fullName,
    this.description,
    this.phone,
    this.gender,
    this.buildingID,
  });

  User.fromJson(Map<dynamic, dynamic> json) {
    id = json['id'];
    fullName = json['fullName'];
    description = json['description'];
    phone = json['phone'];
    gender = json['gender'];
    buildingID = json['buildingID'];
  }

  Map<dynamic, dynamic> toJson() {
    final Map<dynamic, dynamic> data = <dynamic, dynamic>{};
    data['id'] = id;
    data['fullName'] = fullName;
    data['description'] = description;
    data['phone'] = phone;
    data['gender'] = gender;
    data['buildingID'] = buildingID;
    return data;
  }
}
