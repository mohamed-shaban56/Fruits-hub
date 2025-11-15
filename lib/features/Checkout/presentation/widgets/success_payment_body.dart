import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruitapp/core/utliz/app_color.dart';
import 'package:fruitapp/core/utliz/app_image_assets.dart';
import 'package:fruitapp/core/utliz/app_style.dart';
import 'package:fruitapp/core/utliz/widgets/custom_button.dart';
import 'package:fruitapp/features/home/presentation/views/main_view.dart';
import 'package:fruitapp/features/order_feature/presentation/views/track_order_view.dart';
import 'package:fruitapp/generated/l10n.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';

class SuccessPaymentBody extends StatelessWidget {
  const SuccessPaymentBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(children: [],),
              SizedBox(height: 67.h,),
          Image.asset(Assets.paymentSuccessImage),
          SizedBox(height: 50.h,),
          Text(S.current.payment_success,style: AppStyle.bold16(),),
          Spacer(),
      
          CustomButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>TrackOrderView()));
            },
            text: S.current.track_order),
          TextButton(onPressed: (){
            

            PersistentNavBarNavigator.pushNewScreen(
                       context,
                       screen:MainView(),
                     withNavBar: true,
                     
                     );
          }, child: Text(S.current.home,style: AppStyle.bold16().copyWith(color: AppColor.primaryColor),)),
               SizedBox(height: 120.h,)
        ],
      ),
    );
  }
}