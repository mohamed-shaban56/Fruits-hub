import 'dart:developer';
import 'package:fruitapp/features/cart/domain/entity/cart_item_entity.dart';
import 'package:fruitapp/features/dashbord/domain/entites/product_entity.dart';

class CartEntity  {
  List<CartItemEntity>cartItems =[];
  
  void addProductItem(ProductEntity product)
  {
   
    cartItems.add(CartItemEntity(product, 1));
  }

void removeProductItem(CartItemEntity cartEntity)
{
cartItems.remove(cartEntity);
}

CartItemEntity?  getExistProduct(ProductEntity product)
{
   for(var item in cartItems)
  {
    if(item.productEntity == product) return item; 
  }
  return null;
}

num calculateTotalPrice(){
  num totalPrice=0;

  for (var item in cartItems)
  {
    totalPrice +=item.calculateTotalPrice();
   
  }
  log('total price befor descountand shipping is $totalPrice');
  return totalPrice;
  
}


}