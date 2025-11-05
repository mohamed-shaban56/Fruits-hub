class CheckOutAppbarModel {
  final String appBar;

  CheckOutAppbarModel({required this.appBar});
factory CheckOutAppbarModel.copywith(String appBar)
{
  return CheckOutAppbarModel(appBar: appBar);
}
}