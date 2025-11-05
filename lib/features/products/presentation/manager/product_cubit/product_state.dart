part of 'product_cubit.dart';

@immutable
sealed class ProductState {}

final class ProductInitial extends ProductState {}
final class ProductLoading extends ProductState {}
final class ProductFailure extends ProductState {
  final String error;
  ProductFailure(this.error);
}
final class ProductSuccess extends ProductState {
 final  List<ProductEntity>allProducts;

 ProductSuccess(this.allProducts);
}
