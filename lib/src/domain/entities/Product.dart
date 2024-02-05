import 'package:json_annotation/json_annotation.dart';

enum Type {
  // ignore: constant_identifier_names
  selfLoading,
  banks,
  discMachines,
  elastics,
  cardioEquipment
}

@JsonSerializable()
class Product {
  final int id;
  final String name;
  final int kilograms;
  final String photo;
  final String type;

  Product(
      {required this.id,
      required this.name,
      required this.kilograms,
      required this.photo,
      required this.type});

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
        id: json['id'],
        name: json['name'],
        kilograms: json['kilograms'],
        photo: json['photo'],
        type: json['type']);
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'kilograms': kilograms,
      'photo': photo,
      'type': type
    };
  }
}
