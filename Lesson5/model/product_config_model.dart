// sadece bir tane bundan olussun baska olusmasin istiyorsam
// bunun icinde classi singleton yapmalisiniz
class ProductConfig {
  static final ProductConfig instance = ProductConfig._('a');
  final String apiKey;
  ProductConfig._(this.apiKey);
  // bu sekilde singleton clasini  private yapmis oldum
} 
// singleton kullanimin cesitleri var yukaridaki 
//igerton asagidaki de lazy singleton kullanimi


class ProductLazySingleton {
  static ProductLazySingleton? _instance;
  // data olmayabilir olabilirde demek
  ProductLazySingleton._();
  static ProductLazySingleton get instance {
    if (_instance == null) {
      _instance = ProductLazySingleton._init();
    }
    return _instance!;
  }

  ProductLazySingleton._init();
}

