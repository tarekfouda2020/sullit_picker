
class GetPayMethodParams {

  final bool getWalletPayMethod;

  final bool refresh;

  GetPayMethodParams({required this.getWalletPayMethod,this.refresh = true});

  String header() => getWalletPayMethod ? "" : "?mode=wallet";

}