

class OrderProductEntity {
  final String name;
  final String code;
  final double price;
  final String ?imageUrl;
  final int count;

  OrderProductEntity( {required this.count,required this.name, required this.code, required this.price, required this.imageUrl});
 
}

