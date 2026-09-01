class OrdersParams {
  int id;
  bool refresh;

  OrdersParams({
    required this.id,
    this.refresh = true,
  });
}
