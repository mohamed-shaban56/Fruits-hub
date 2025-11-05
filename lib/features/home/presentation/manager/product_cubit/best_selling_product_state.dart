part of 'best_selling_product_cubit.dart';

@immutable
sealed class BestSellingProductState {}

final class BestSellingProductInitial extends BestSellingProductState {}
final class BestSellingProductLoading extends BestSellingProductState {}
final class BestSellingProductFailure extends BestSellingProductState {
  final String error;
  BestSellingProductFailure(this.error);
}
final class BestSellingProductSuccess extends BestSellingProductState {
 final  List<ProductEntity>bestSellingProducts;

 BestSellingProductSuccess(this.bestSellingProducts);
}
