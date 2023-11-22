// To parse this JSON data, do
//
//     final product = productFromJson(jsonString);

import 'dart:convert';

List<Product> productFromJson(String str) =>
    List<Product>.from(json.decode(str).map((x) => Product.fromJson(x)));

String productToJson(List<Product> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Product {
  Model model;
  int pk;
  Fields fields;

  Product({
    required this.model,
    required this.pk,
    required this.fields,
  });

  factory Product.fromJson(Map<String, dynamic> json) => Product(
        model: modelValues.map[json["model"]]!,
        pk: json["pk"],
        fields: Fields.fromJson(json["fields"]),
      );

  Map<String, dynamic> toJson() => {
        "model": modelValues.reverse[model],
        "pk": pk,
        "fields": fields.toJson(),
      };
}

class Fields {
  int user;
  String name;
  String kelas;
  String menu;
  int amount;
  String description;
  String price;
  String category;
  DateTime dateAdded;
  String image;

  Fields({
    required this.user,
    required this.name,
    required this.kelas,
    required this.menu,
    required this.amount,
    required this.description,
    required this.price,
    required this.category,
    required this.dateAdded,
    required this.image,
  });

  factory Fields.fromJson(Map<String, dynamic> json) => Fields(
        user: json["user"],
        name: json["name"],
        kelas: json["kelas"],
        menu: json["menu"],
        amount: json["amount"],
        description: json["description"],
        price: json["price"],
        category: json["category"],
        dateAdded: DateTime.parse(json["date_added"]),
        image: json["image"],
      );

  Map<String, dynamic> toJson() => {
        "user": user,
        "name": name,
        "kelas": kelas,
        "menu": menu,
        "amount": amount,
        "description": description,
        "price": price,
        "category": category,
        "date_added":
            "${dateAdded.year.toString().padLeft(4, '0')}-${dateAdded.month.toString().padLeft(2, '0')}-${dateAdded.day.toString().padLeft(2, '0')}",
        "image": image,
      };
}

enum Model { MAIN_PRODUCT }

final modelValues = EnumValues({"main.product": Model.MAIN_PRODUCT});

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
