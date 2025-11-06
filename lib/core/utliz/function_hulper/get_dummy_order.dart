import 'package:fruitapp/features/Checkout/domain/entityes/address_entity.dart';
import 'package:fruitapp/features/order_feature/domain/entity/order_entity.dart';
import 'package:fruitapp/features/order_feature/domain/entity/order_product_entity.dart';


final List<OrderEntity> dummyOrders = [
  OrderEntity(
    uid: 'ORD-001',
    totalPrice: 250.0,
    paymentMethod: 'cash',
    addressModel: AddressEntity(
      fullName: 'محمد شعبان',
      email: 'mohamed@example.com',
      phoneNumber: '01012345678',
      city: 'القاهرة',
      address: 'شارع النيل، مبنى رقم 12',
      floorApartment: 'الدور الثالث، شقة 5',
    ),
    orderProduct: [
      OrderProductEntity(
        name: 'تفاح أحمر',
        price: 50.0, count: 1, code: '', imageUrl: '',
      
      ),
      OrderProductEntity(
        name: 'موز بلدي',
        price: 25.0,
        
        imageUrl: 'https://example.com/banana.png', count: 1, code: '',
      ),
    ],
  ),
  OrderEntity(
    uid: 'ORD-002',
    totalPrice: 400.0,
    paymentMethod: 'online',
    addressModel: AddressEntity(
      fullName: 'أحمد علي',
      email: 'ahmed@example.com',
      phoneNumber: '01122334455',
      city: 'الجيزة',
      address: 'شارع الهرم، عمارة 22',
      floorApartment: 'الدور الثاني، شقة 3',
    ),
    orderProduct: [
      OrderProductEntity(
        name: 'فراولة',
        price: 100.0,
        imageUrl: 'https://example.com/strawberry.png', count: 1, code: '',
      ),
      OrderProductEntity(
        name: 'عنب أحمر',
        price: 50.0,
      
        imageUrl: 'https://example.com/grape.png', count: 1, code: '',
      ),
    ],
  ),
];
