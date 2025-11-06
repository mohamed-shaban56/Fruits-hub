abstract class AddProductState {}
class AddProductSecces extends AddProductState{}
class AddProductLoading extends AddProductState{}
class AddProductFailure extends AddProductState{
  final String error;
  AddProductFailure(this.error);
}
class AddProductIntial extends AddProductState{}