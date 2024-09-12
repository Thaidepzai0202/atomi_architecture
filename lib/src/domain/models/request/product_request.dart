import 'package:json_annotation/json_annotation.dart';

part 'product_request.g.dart';

@JsonSerializable(
  createFactory: false,
  explicitToJson: true,
)

class ProductRequest {
  String? name;
  int? quantity;
  double? price;
  String? imagePath;
  String? description;

  ProductRequest({
    this.name,
    this.quantity,
    this.price,
    this.imagePath,
    this.description,
  });
}
