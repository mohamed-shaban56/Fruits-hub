
import 'package:fruitapp/features/cart/domain/entity/cart_item_entity.dart';
import 'package:fruitapp/features/order_feature/domain/entity/order_product_entity.dart';

class OrderProdctModel {
  final String name;
  final String code;
  final double price;
  final String ?imageUrl;
  final int count;

  OrderProdctModel( {required this.count,required this.name, required this.code, required this.price, required this.imageUrl});
 factory OrderProdctModel.fromEntity(CartItemEntity cartItems)
 {
  return OrderProdctModel(
    count: cartItems.quantity,
    name: cartItems.productEntity.productName, code: cartItems.productEntity.productCode, price: cartItems.productEntity.productPrice, imageUrl: cartItems.productEntity.imageUrl);
 }
factory OrderProdctModel.fromjson(Map<String ,dynamic>json)
{
  return OrderProdctModel(count: json['count'], name: json['name'], code: json['code'], price: (json['price']as num).toDouble(), imageUrl: json['imageUrl']);
}
 toJson()
 {
  return {
    'name':name,
    'code':code,
    'price':price,
    'imageUrl':imageUrl,
    'count':count
  };
 }

OrderProductEntity toEntity()=>OrderProductEntity(count: count, name: name, code: code, price: price, imageUrl: imageUrl);
}

