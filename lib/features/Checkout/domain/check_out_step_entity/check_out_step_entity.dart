import 'package:fruitapp/generated/l10n.dart';

class CheckOutStepEntity {
  final String stepName;
  final String stepPosition;
  CheckOutStepEntity({required this.stepPosition,required this.stepName});
}
List<CheckOutStepEntity>checkOutStepList =[
  CheckOutStepEntity(stepPosition: '1', stepName: S.current.shipping),
    CheckOutStepEntity(stepPosition: '2', stepName: S.current.checkout_address),
      CheckOutStepEntity(stepPosition: '3', stepName: S.current.checkout_payment),
        CheckOutStepEntity(stepPosition: '4', stepName: S.current.checkout_review),
];