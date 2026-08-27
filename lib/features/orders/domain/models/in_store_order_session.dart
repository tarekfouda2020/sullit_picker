import 'package:flutter_tdd/features/orders/data/model/order_model/order_model.dart';

class InStoreScannedItem {
  final int orderLineId;
  final int productId;
  final int variantId;
  final int qnt;
  final bool isExtra;
  final String name;
  final String imageUrl;
  final String price;
  final String barcode;

  const InStoreScannedItem({
    this.orderLineId = 0,
    required this.productId,
    required this.variantId,
    required this.qnt,
    required this.isExtra,
    required this.name,
    required this.imageUrl,
    required this.price,
    required this.barcode,
  });

  InStoreScannedItem copyWith({int? qnt}) {
    return InStoreScannedItem(
      orderLineId: orderLineId,
      productId: productId,
      variantId: variantId,
      qnt: qnt ?? this.qnt,
      isExtra: isExtra,
      name: name,
      imageUrl: imageUrl,
      price: price,
      barcode: barcode,
    );
  }

  Map<String, dynamic> toJson() => {
        'order_line_id': orderLineId,
        'product_id': productId,
        'variant_id': variantId,
        'qnt': qnt,
        'is_extra': isExtra,
        'name': name,
        'image_url': imageUrl,
        'price': price,
        'barcode': barcode,
      };

  factory InStoreScannedItem.fromJson(Map<String, dynamic> json) {
    return InStoreScannedItem(
      orderLineId: (json['order_line_id'] as num?)?.toInt() ?? 0,
      productId: (json['product_id'] as num?)?.toInt() ?? 0,
      variantId: (json['variant_id'] as num?)?.toInt() ?? 0,
      qnt: (json['qnt'] as num).toInt(),
      isExtra: json['is_extra'] as bool? ?? false,
      name: json['name'] as String? ?? '',
      imageUrl: json['image_url'] as String? ?? '',
      price: json['price'] as String? ?? '0',
      barcode: json['barcode'] as String? ?? '',
    );
  }
}

class InStoreOrderSession {
  final OrderModel order;
  final List<InStoreScannedItem> scanned;

  const InStoreOrderSession({
    required this.order,
    required this.scanned,
  });

  Map<String, dynamic> toJson() => {
        'order': order.toFlatJson(),
        'scanned': scanned.map((e) => e.toJson()).toList(),
      };

  factory InStoreOrderSession.fromJson(Map<String, dynamic> json) {
    return InStoreOrderSession(
      order: OrderModel.fromJson(json['order'] as Map<String, dynamic>),
      scanned: ((json['scanned'] as List<dynamic>?) ?? [])
          .map((e) => InStoreScannedItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }
}
