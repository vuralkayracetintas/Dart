//eager singleton

class ProductConfig {
  static final ProductConfig instance = ProductConfig._('xxx');
  final String apiKey;

  ProductConfig._(this.apiKey);
}

//lazy singleton
class ProductLazySingleton {
  static ProductLazySingleton? _instance;
  static ProductLazySingleton get instance {
    if (_instance == null) _instance = ProductLazySingleton._init();
    return instance;
  }

  ProductLazySingleton._init();
}
