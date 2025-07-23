class ContactUsParams {
  final String name;
  final String email;
  final String title;
  final String message;
  final String phone;

  ContactUsParams({
    required this.name,
    required this.email,
    required this.title,
    required this.message,
    required this.phone,
  });

  Map<String,dynamic> toJson()=>{
    "email": email,
    "name": name,
    "title": title,
    "message": message,
    "phone": phone,
  };

}
