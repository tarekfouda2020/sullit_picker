
import 'dart:io';

class UpdateProfileImageParams {

 final File image;

  UpdateProfileImageParams({required this.image});

  Map<String,dynamic> toJson() =>{
    "avatar": image
  };

}