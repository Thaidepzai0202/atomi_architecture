// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductResponse _$ProductResponseFromJson(Map<String, dynamic> json) =>
    ProductResponse(
      name: json['name'] as String?,
      quantity: (json['quantity'] as num?)?.toInt(),
      price: (json['price'] as num?)?.toDouble(),
      imagePath: json['imagePath'] as String?,
      description: json['description'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      productId: json['productId'] as String?,
    );

Map<String, dynamic> _$ProductResponseToJson(ProductResponse instance) =>
    <String, dynamic>{
      'name': instance.name,
      'quantity': instance.quantity,
      'price': instance.price,
      'imagePath': instance.imagePath,
      'description': instance.description,
      'createdAt': instance.createdAt?.toIso8601String(),
      'productId': instance.productId,
    };
