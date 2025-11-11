import 'package:fruitapp/features/dashbord/data/model/product_model.dart';
import 'package:hive/hive.dart';

class ProductModelAdapter extends TypeAdapter<ProductModel> {
  @override
  final int typeId = 1;

  @override
  ProductModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{};

    for (int i = 0; i < numOfFields; i++) {
      fields[reader.readByte()] = reader.read();
    }

    return ProductModel(
      sellingCount: fields[0] as int,
      productPrice: fields[1] as double,
      productName: fields[2] as String,
      productCode: fields[3] as String,
      productDesc: fields[4] as String,
      imageUrl: fields[5] as String,
      experationMonths: fields[6] as int,
      numOfcolories: fields[7] as int,
      organicPercentage: fields[8] as int,
      averageRating: fields[9] as num,
      averageCount: fields[10] as num,
      unit: fields[11] as int,
    );
  }

  @override
  void write(BinaryWriter writer, ProductModel obj) {
    writer
      ..writeByte(12)
      ..writeByte(0)
      ..write(obj.sellingCount)
      ..writeByte(1)
      ..write(obj.productPrice)
      ..writeByte(2)
      ..write(obj.productName)
      ..writeByte(3)
      ..write(obj.productCode)
      ..writeByte(4)
      ..write(obj.productDesc)
      ..writeByte(5)
      ..write(obj.imageUrl)
      ..writeByte(6)
      ..write(obj.experationMonths)
      ..writeByte(7)
      ..write(obj.numOfcolories)
      ..writeByte(8)
      ..write(obj.organicPercentage)
      ..writeByte(9)
      ..write(obj.averageRating)
      ..writeByte(10)
      ..write(obj.averageCount)
      ..writeByte(11)
      ..write(obj.unit);
  }
}
