

class LogoutParams {

  final String deviceToken;

  LogoutParams({required this.deviceToken});



  Map<String,dynamic> toJson()=>{
    "device_token" : deviceToken
  };


}