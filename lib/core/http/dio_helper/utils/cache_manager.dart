import 'package:tf_dio_cache/tf_dio_cache.dart';
import '../../generic_http/api_names.dart';

class CacheManager {
  static DioCacheManager? _instance;

  DioCacheManager call() {
    _instance ??= DioCacheManager(
      CacheConfig(
        baseUrl: ApiNames.baseUrl,
        defaultRequestMethod: "POST",
      ),
    );
    return _instance!;
  }

  /// Clear all HTTP cache - useful when logging out
  Future<void> clearCache() async {
    if (_instance != null) {
      await _instance!.clearAll();
    }
  }
}
