import 'package:json_annotation/json_annotation.dart';

part 'product_response.g.dart';

@JsonSerializable()
class ProductResponse {
  String? name;
  int? quantity;
  double? price;
  String? imagePath;
  String? description;
  DateTime? createdAt;
  String? productId;

  ProductResponse({
    this.name,
    this.quantity,
    this.price,
    this.imagePath,
    this.description,
    this.createdAt,
    this.productId,
  });

  factory ProductResponse.fromJson(Map<String, dynamic> json) => _$ProductResponseFromJson(json);

}
