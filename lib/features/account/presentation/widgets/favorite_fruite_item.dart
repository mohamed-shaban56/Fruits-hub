import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:fruitapp/core/utliz/app_color.dart';
import 'package:fruitapp/core/utliz/app_style.dart';
import 'package:fruitapp/core/utliz/cubit/cart/cart_cubit/cart_cubit.dart';
import 'package:fruitapp/core/utliz/function_hulper/is_arabic.dart';
import 'package:fruitapp/core/utliz/function_hulper/user_massage.dart';
import 'package:fruitapp/core/utliz/widgets/add_remove_button.dart';
import 'package:fruitapp/core/widgets/custom_caced_network_image.dart';
import 'package:fruitapp/features/dashbord/domain/entites/product_entity.dart';
import 'package:fruitapp/generated/l10n.dart';

class FavoriteFruiteItem extends StatelessWidget {
  const FavoriteFruiteItem({super.key, required this.productItem});
  final ProductEntity productItem;
  @override
  Widget build(BuildContext context) {
    var isA = isArabic(context);
    return Container(
      decoration: BoxDecoration(
          color: AppColor.fruitBackGround(context),
          borderRadius: BorderRadius.circular(4)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 8.h,
          ),
          Padding(
            padding: EdgeInsets.only(left: isA ? 0 : 12, right: isA ? 12 : 0),
            child: Icon(FontAwesomeIcons.solidHeart, color: Colors.red),
          ),
          Center(
              child: CustomCachedNetworkImage(imageUrl: productItem.imageUrl)),
          Spacer(),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 16,right: 16,bottom: 10 ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      productItem.productName,
                      style: AppStyle.semiBold13(),
                    ),
                    Text.rich(
                      textDirection: isA ? TextDirection.rtl : TextDirection.ltr,
                      TextSpan(children: [
                        TextSpan(
                            text: productItem.productPrice.toString(),
                            style: AppStyle.semiBold13().copyWith(
                                color: AppColor.lightSeconodColor,
                                fontWeight: FontWeight.bold)),
                        TextSpan(
                            text: ' / ',
                            style: TextStyle(color: AppColor.secondColor)),
                        TextSpan(
                            text: S.current.countaty,
                            style: AppStyle.semiBold13()
                                .copyWith(color: AppColor.lightSeconodColor)),
                      ]),
                    ),
                  ],
                ),
              ),
              Spacer(),
              AddRemoveButton(
                onTap: () {
                  context.read<CartCubit>().addProduct(productItem);

                  userMessege(
                      context: context,
                      errorMessege: S.current.productAddedToCart);
                },
                radius: 20,
                backGroundcolor:
                    AppColor.fruitItemActionButtomBackground(context),
                icon: Icons.add,
                iconColor: Theme.of(context).brightness == Brightness.light
                    ? Colors.white
                    : Colors.black,
              ),
              SizedBox(width: 16,)
            ],
          )
        ],
      ),
    );
  }
}
