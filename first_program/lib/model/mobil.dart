import 'dart:convert';

class Mobil {
  int id;
  String brand;
  String model;
  String color;

  Mobil(
      {required this.id,
      required this.brand,
      required this.model,
      required this.color});

  factory Mobil.fromJson(Map<String, dynamic> json) => Mobil(
        id: json["id"],
        brand: json["brand"],
        model: json["model"],
        color: json["color"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "brand": brand,
        "model": model,
        "color": color,
      };
}

Mobil mobilFromJson(String str) => Mobil.fromJson(json.decode(str));
String mobilToJson(Mobil data) => json.encode(data.toJson());
