

import 'package:bloc/bloc.dart';
import 'package:fruitapp/features/cart/domain/entity/cart_entity.dart';
import 'package:fruitapp/features/cart/domain/entity/cart_item_entity.dart';
import 'package:fruitapp/features/dashbord/domain/entites/product_entity.dart';
import 'package:meta/meta.dart';

part 'cart_state.dart';

class CartCubit extends Cubit<CartState> {
  CartCubit() : super(CartInitial());
CartEntity cartEntity=CartEntity();
  void addProduct(ProductEntity productEntity)
  {
   var product=  cartEntity.getExistProduct(productEntity);

  if(product !=null)
  {
    // i need to increas the count of this product
product.increamentCount();
  }else{
    // i need to add this product to the list
    cartEntity.addProductItem(productEntity);
  }
  emit(AddCartItem(cartItems: cartEntity.cartItems));
  }

void removeProduct(CartItemEntity cartitem)
{
  cartEntity.removeProductItem(cartitem);
  emit(RemoveCartItem());
}



}
