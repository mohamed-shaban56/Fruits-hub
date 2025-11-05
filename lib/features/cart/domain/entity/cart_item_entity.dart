

import 'package:equatable/equatable.dart';
import 'package:fruitapp/features/dashbord/domain/entites/product_entity.dart';


// ignore: must_be_immutable
class CartItemEntity  extends Equatable{
final ProductEntity productEntity;
  int quantity;
  CartItemEntity(this.productEntity,this.quantity);
   
   void increamentCount()
   {
    quantity++;
   }
    void decreamentCount()
   {
    if(quantity>=1)
    {
         quantity--;
    }
    
   }
   num calculateTotalPrice()
   {
   num totalPrice= quantity * productEntity.productPrice;
   return totalPrice;
   }
   
     @override
     List<Object?> get props => [productEntity];
}