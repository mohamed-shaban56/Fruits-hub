import 'package:fruitapp/core/utliz/enum/order_status_enum.dart';
import 'package:fruitapp/features/Checkout/data/modles/address_mdel.dart';
import 'package:fruitapp/features/Checkout/data/modles/order_prodct_model.dart';
import 'package:fruitapp/features/Checkout/domain/entityes/order_input_entity.dart';
import 'package:fruitapp/features/order_feature/domain/entity/order_entity.dart';
import 'package:uuid/uuid.dart';

class OrderModel{


 final dynamic orderId;
  final double totalPrice;
  final AddressModel addressModel;
final List<OrderProdctModel>orderProduct;

final String paymentMethod;
final String? orderStatus;
OrderModel( {required this.orderStatus,required this.orderId,required this.totalPrice,required this.addressModel,required this.paymentMethod,required this.orderProduct});

factory OrderModel.fromEntity(OrderInputEntity orderEntity)
{
  return OrderModel(

    orderId:Uuid().v4(),
    orderStatus: OrderStatusEnum.pending.name,
  totalPrice: orderEntity.cartEntity.calculateTotalPrice().toDouble(),
   addressModel: AddressModel.fromEntity(orderEntity.addressEntity!), 
   paymentMethod: orderEntity.isPayWithCash! ?'cash':'online',
   orderProduct: orderEntity.cartEntity.cartItems.map((e)=>OrderProdctModel.fromEntity(e)).toList());
}
factory OrderModel.fromjson(Map<String ,dynamic>json)
{
  return OrderModel(
orderId:json['orderId'] ,

    orderStatus:_statusFromServer(json['status']) ,
   totalPrice: (json['totalPrice'] as num).toDouble(), 
   
    addressModel: AddressModel.fromjson(json['addressModel']),
   paymentMethod: json['paymentMethod'],
    orderProduct: (json['orderProduct']as List).map((e)=>OrderProdctModel.fromjson(e)).toList() );
}




Map<String,dynamic> toJson()=>  {
  'orderId':orderId,
'status':orderStatus,
'totalPrice':totalPrice,
'addressModel':addressModel.toJson(),
'paymentMethod':paymentMethod,
'orderProduct':orderProduct.map((e)=>e.toJson()).toList(),


};
toEntity()=>OrderEntity(
 totalPrice: totalPrice,
 orderId: orderId,
 orderStatus: orderStatus,
  addressModel: addressModel.toEntity(),
   paymentMethod: paymentMethod, 
   orderProduct: orderProduct.map((e)=>e.toEntity()).toList()

   
   );
}
String _statusFromServer(String status) {
final currentStatus=  OrderStatusEnum.values.firstWhere((e)=>e.name==status);
return currentStatus.name;
}