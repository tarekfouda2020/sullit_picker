class UpdateDeviceTokenParams {
  final String? oldDeviceToken;
  final String? newDeviceToken;

  UpdateDeviceTokenParams({
    this.oldDeviceToken,
    this.newDeviceToken,
  });

  Map<String, dynamic> toJson() {
    return {
      if (oldDeviceToken != null) 'old_device_token': oldDeviceToken,
      'new_device_token': newDeviceToken,
    };
  }
}
