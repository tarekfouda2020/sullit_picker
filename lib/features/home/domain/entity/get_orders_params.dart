class GetOrdersParams {
  final bool fromRemote;
  final String? search;

  GetOrdersParams({
    this.fromRemote = true,
    this.search,
  });

  String queryParams() {
    final query = search?.trim();
    if (query == null || query.isEmpty) return '';
    return '?search=${Uri.encodeQueryComponent(query)}';
  }
}
