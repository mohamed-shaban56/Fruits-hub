
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:fruitapp/core/utliz/app_image_assets.dart';
import 'package:fruitapp/core/utliz/services/shared_prefrence_singlton.dart';
import 'package:image_picker/image_picker.dart';



class UserImage extends StatefulWidget {
  const UserImage({super.key});

  @override
  State<UserImage> createState() => _UserImageState();
}

class _UserImageState extends State<UserImage> {
     final ImagePicker picker = ImagePicker();

  File? imageFile;
 File ?getProfileImage;

  @override
  void initState() {

    super.initState();
   
         getProfileImage=SharedPrefrenceSinglton.getImage();
 

  }
  @override
  Widget build(BuildContext context) {
    return Stack(
          clipBehavior: Clip.none,
          children: [

            CircleAvatar(
              radius: 45,
              backgroundImage:    getProfileImage!=null?  FileImage(getProfileImage!)     :AssetImage(Assets.accountViewUserImage)as ImageProvider ,
            ),

            Positioned(
              left: 0,
              right: 0,
              bottom: -45,
              child: GestureDetector(
                onTap: () async{

             final XFile? image = await picker.pickImage(source: ImageSource.gallery);
               setState(() {
                if(image!=null)
                {
                 getProfileImage= imageFile=File(image.path);
                 
                }else{
                  imageFile=null;
                }
                   
                    });
                    if(image!=null)
                    {
      await SharedPrefrenceSinglton.setImage(imageFile!.path);
                    }
      
                },
                child: Image.asset(Assets.cameraImage))
            )
          ],
          
        );
}
}