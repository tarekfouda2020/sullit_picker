class RequestBodyModel{
  final String url;
  final Function(dynamic) errorFunc;
  final Map<String, dynamic> body;
  final bool showLoader;
  final bool forceRefresh;
  bool isFormData;
  bool showErrorMessage;

  RequestBodyModel({
    required this.url,
    this.body=const<String,dynamic>{},
    this.showLoader = true,
    this.forceRefresh = true,
    this.showErrorMessage = true,
    required this.errorFunc,
    required this.isFormData,
  });
}