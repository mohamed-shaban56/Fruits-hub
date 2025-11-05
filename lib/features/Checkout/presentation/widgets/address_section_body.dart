import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:fruitapp/core/utliz/app_color.dart';
import 'package:fruitapp/core/utliz/app_style.dart';
import 'package:fruitapp/core/utliz/custom_text_fild.dart';
import 'package:fruitapp/features/Checkout/domain/entityes/order_input_entity.dart';
import 'package:fruitapp/features/Checkout/domain/entityes/address_entity.dart';
import 'package:fruitapp/generated/l10n.dart';
import 'package:provider/provider.dart';

class AddressSectionBody extends StatefulWidget {
  const AddressSectionBody({super.key});

  @override
  State<AddressSectionBody> createState() => _AddressSectionBodyState();
}

class _AddressSectionBodyState extends State<AddressSectionBody> {
  bool addressSaved=false;
late TextEditingController nameControler;
late TextEditingController addressControler;
late TextEditingController emailControler;
late TextEditingController cityControler;
late TextEditingController phoneControler;
late TextEditingController floorControler;
GlobalKey<FormState>formkey=GlobalKey<FormState>();
@override
  void initState() {

    super.initState();
    nameControler=TextEditingController();
       addressControler=TextEditingController();
          emailControler=TextEditingController();
             cityControler=TextEditingController();
                phoneControler=TextEditingController();
                   floorControler=TextEditingController();
  }
  @override
  void dispose() {
   
    super.dispose();
    nameControler.dispose();
    addressControler.dispose();
    emailControler.dispose();
    cityControler.dispose();
    phoneControler.dispose();
    floorControler.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formkey,
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 24.h,),
            CustomTextFild(
              controller:nameControler ,
              hintText: S.current.full_name, textInputType: TextInputType.text),
             SizedBox(
              
              height: 8.h,),
             CustomTextFild(
              controller: emailControler,
              hintText: S.current.email, textInputType: TextInputType.text),
             SizedBox(height: 8.h,),
             CustomTextFild(
              controller: addressControler,
              hintText: S.current.checkout_address, textInputType: TextInputType.text),
             SizedBox(height: 8.h,),
             CustomTextFild(
              controller:cityControler,
              hintText: S.current.checkout_city, textInputType: TextInputType.text),
             SizedBox(height: 8.h,),
             CustomTextFild(
              controller: floorControler,
              hintText: S.current.checkout_floor_apartment, textInputType: TextInputType.text),
             SizedBox(height: 8.h,),
             CustomTextFild(
              controller:phoneControler ,
              hintText: S.current.check_out_phone_number, textInputType: TextInputType.text),
             SizedBox(height: 16.h,),
             Row(
              children: [
                IconButton(onPressed: (){
                  setState(() {
                    addressSaved=!addressSaved;
                  });
                  if(formkey.currentState!.validate())
                  {
                    context.read<OrderInputEntity>().addressEntity=AddressEntity(fullName: nameControler.text, email: emailControler.text, address: addressControler.text, city: cityControler.text, phoneNumber: phoneControler.text, floorApartment: floorControler.text);
                   
                  }
                  nameControler.clear();
                  emailControler.clear();
                  addressControler.clear();
                  phoneControler.clear();
                  floorControler.clear();
                  cityControler.clear();
        
        
                }, icon: Icon(addressSaved?FontAwesomeIcons.toggleOn:FontAwesomeIcons.toggleOff,
                color: AppColor.primaryColor,)),
                Text(S.current.checkout_save_address,style: AppStyle.semiBold13().copyWith(color: AppColor.primaryColor),)
              ],
             )
          ],
        ),
      ),
    );
  }
}