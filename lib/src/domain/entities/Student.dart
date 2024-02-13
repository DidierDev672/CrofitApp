class Student {
  final int id;
  final int idCoach;
  final String name;
  final String lastName;
  final String dni;
  final String email;
  final String photo;
  final bool subscription;

  Student(
      {required this.id,
      required this.idCoach,
      required this.name,
      required this.lastName,
      required this.dni,
      required this.email,
      required this.photo,
      required this.subscription});

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'idCoach': idCoach,
      'name': name,
      'lastName': lastName,
      'dni': dni,
      'email': email,
      'photo': photo,
      'subscription': subscription
    };
  }

  factory Student.fromMap(Map<String, dynamic> map) {
    return Student(
        id: map['id'],
        idCoach: map['idCoach'],
        name: map['name'],
        lastName: map['lastName'],
        dni: map['dni'],
        email: map['email'],
        photo: map['photo'] ?? '',
        subscription: map['subscription']);
  }
}
