class Users {
  String id;
  String name;
  String email;
  String phone;
  String image;
  String password;


  Users({required this.id, required this.name, required this.email, required this.phone, required this.image, required this.password,});

  factory Users.fromJson(Map<String, dynamic> json) {
    return Users(
      id: json['id'] as String,
      name: json['name'] as String,
      email: json['email'] as String,
      phone: json['phone'] as String,
      image: json['image'] as String,
      password: json['password'] as String,
    );
  }
}

