import 'dart:convert';

class ProductModel {
  // classification of foods
  int? classify;
  // the name of the food
  String? name;
  // Product Description
  String? description;
  // Description of food
  double? price;
  // Detailed description of food
  String? detail;

  ProductModel({
    this.classify,
    this.name,
    this.price,
    this.detail,
    this.description,
  });

  Map<String, dynamic> toMap() {
    return {
      'classify': classify,
      'name': name,
      'description': description,
      'price': price,
      'detail': detail,
    };
  }

  factory ProductModel.fromMap(Map<String, dynamic> map) {
    return ProductModel(
      classify: map['classify']?.toInt(),
      name: map['name'],
      description: map['description'],
      price: map['price']?.toDouble(),
      detail: map['detail'],
    );
  }

  String toJson() => json.encode(toMap());

  factory ProductModel.fromJson(String source) =>
      ProductModel.fromMap(json.decode(source));
}
