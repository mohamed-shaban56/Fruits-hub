part of 'cart_cubit.dart';

@immutable
sealed class CartState {}

final class CartInitial extends CartState {}
final class AddCartItem extends CartState {
  final List<CartItemEntity>cartItems;
    
  AddCartItem({required this.cartItems});
}
final class RemoveCartItem extends CartState {}
final class UpdateTotalPrice extends CartState {
final    int totalPrice;
UpdateTotalPrice(this.totalPrice);
}
 final class CalclateTotalPrice extends CartState{
  final num totalPrice;
  CalclateTotalPrice(this.totalPrice);
 }