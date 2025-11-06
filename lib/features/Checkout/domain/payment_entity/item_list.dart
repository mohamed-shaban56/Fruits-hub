import 'package:fruitapp/features/cart/domain/entity/cart_item_entity.dart';

class ItemList {

  final String name;
  final String quantity;
  final String price ;
  final String currency;

  ItemList({required this.name, required this.quantity, required this.price, required this.currency});
factory ItemList.fromEntity(CartItemEntity cartitem, String currency)
{
  return ItemList(
  name: cartitem.productEntity.productName, 
  quantity: cartitem.quantity.toString(),
 price: cartitem.productEntity.productPrice.toString(), 
  currency:currency );


}

toJson()=>{

  "name":name,
  "quantity": quantity,
  "price": price,
 "currency": currency
};
 
}