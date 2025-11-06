
import 'package:fruitapp/features/dashbord/data/model/product_model.dart';
import 'package:hive/hive.dart';

void addFavoriteItemLogic({required  bool isSelected,required  ProductModel productModel,required Box box}) {
  
     if(isSelected==true)
    {
     
      box.put(productModel.productCode,productModel);
    }
    else if(isSelected==false)
    {
      
      box.delete(productModel.productCode);
    }
  }