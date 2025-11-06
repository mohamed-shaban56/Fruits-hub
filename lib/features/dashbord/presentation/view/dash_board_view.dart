import 'package:flutter/material.dart';
import 'package:fruitapp/core/utliz/function_hulper/dashbord_appBar.dart';
import 'package:fruitapp/features/dashbord/presentation/view/product_cruid_widget.dart';
import 'package:fruitapp/features/dashbord/presentation/view/add_product_view.dart';
import 'package:fruitapp/features/dashbord/presentation/view/delete_product_view.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';

class DashBoardView extends StatelessWidget {
  const DashBoardView({super.key});
static const routeName="dashboardViewView";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:dashBordAppBar(context, title: 'Product Manger'),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 20),
        child: Column(
       
          children: [
            SizedBox(height: 20,),
            ProductCrudWidget(
              onTap: () {
                PersistentNavBarNavigator.  pushNewScreen(
              context,
              screen: const AddProductView(),
              withNavBar: true, 
             
            );
               
              },
              crudItem: 'Add Product',),
                 SizedBox(height: 20,),
              ProductCrudWidget(
                onTap: () {
                    PersistentNavBarNavigator.  pushNewScreen(
              context,
              screen: const DeleteProductView(),
              withNavBar: true, );
                },
                crudItem: 'delete Product',),
                 SizedBox(height: 20,),
              ProductCrudWidget(crudItem: 'update Product',),
                 SizedBox(height: 20,),
                  
          ],
        ),
      ),
    );
  }
}
