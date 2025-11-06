part of 'get_order_cubit.dart';

sealed class GetOrderState extends Equatable {
  const GetOrderState();

  @override
  List<Object> get props => [];
}

final class OrderInitial extends GetOrderState {}
final class OrderLoadig extends GetOrderState {}
final class OrderFailure extends GetOrderState {
  final String error;
const  OrderFailure(this.error);
}
final class OrderSuccess extends GetOrderState {
  final List<OrderEntity>order;
 const OrderSuccess(this.order);
}
