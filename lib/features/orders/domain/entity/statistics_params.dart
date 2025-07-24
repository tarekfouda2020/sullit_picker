class StatisticsParams {

  final int? sellerId;

  StatisticsParams({this.sellerId});

  String get url {
    return sellerId !=null ? "?seller_id=$sellerId" : "";
  }


}