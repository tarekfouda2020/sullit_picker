class CancelOrderParams {
  final int id;
  final String? cancelReason;

  CancelOrderParams({required this.id, this.cancelReason});

  Map<String, dynamic> toJson() => {
        if (cancelReason != null) 'cancel_reason': cancelReason,
      };
}
