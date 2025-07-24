class StatisticsParams {

  final bool refresh;
  final int? sellerId;

  StatisticsParams({required this.refresh,this.sellerId});

  String get url {
    return sellerId !=null? "?seller_id=$sellerId" : "";
  }


}