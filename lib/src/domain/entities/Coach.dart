class Coach {
  final String id;
  final String name;
  final String lastName;
  final String email;
  final String password;
  final String phone;
  final String photoProfile;
  final bool isAdmin;

  Coach(
      {required this.id,
      required this.name,
      required this.lastName,
      required this.email,
      required this.password,
      required this.phone,
      required this.photoProfile,
      this.isAdmin = false});

  //Convert a Coach object a DB map.
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'lastName': lastName,
      'email': email,
      'password': password,
      'phone': phone,
      'photoProfile': photoProfile,
      'isAdmin': isAdmin
    };
  }

  // Convertir a DB map to a User object.
  factory Coach.fromMap(Map<String, dynamic> map) {
    return Coach(
        id: map['id'],
        name: map['name'],
        lastName: map['lastName'],
        email: map['email'],
        password: map['password'],
        phone: map['photo'],
        photoProfile: map['photoProfile'],
        isAdmin: map["isAdmin"]);
  }
}
