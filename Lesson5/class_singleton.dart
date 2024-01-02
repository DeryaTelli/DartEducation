import 'model/product_config_model.dart';

void main() {
// hep ayni degerleri kullaniyorsam cagiriyorsam orda bu classin bu ozeligini kullaniyorumdur
  final newP = Product.money;
  print(newP);
  calculateMoney(); //  calculateMoney(Product.money ?? 0);
  productNameChange();
  calculateMoney(); //calculateMoney(Product.money ?? 0);  bu kodun kontrolu yok evet ama calculate methodunun kontorlu var
  // cunku ona parametra yazdik

// user classini kullanarak product uretmek istiyorum
  final user1 = User('defne', 'pencil');
  final newProduct = Product(user1.product);
  // user clasinda verdigim product name ismini
  // product kisminda uretmis oldum bu sekilde
  final newProduct2 = Product.fromUser(user1);
  // yukaridakini kullanmak yerine bunu terih etmeliyiz
  // daha dogru bir kullanim olacaktir

//api keyim neydi acaba ? musteri soruyor
  ProductConfig.instance.apiKey;
  // ProductConfig('avbc').apiKey; classi private yaptigim icin bu sekilde cagiramam

  ProductLazySingleton.instance; // . diyerek  kullaniyorlar
}

void calculateMoney() {
  //void calculateMoney(int money ) {
  if ((Product.money ?? 0) > 5) {
    // if (money > 5) {
    print('5t tl daha eklendi');
    // Product.money += 5;
    Product.increasMoney(5);
    print(Product.money);
  }
}

void productNameChange() {
  Product.money = null;
  print('null oldu money');
  //Product.companyName = '';
}

class Product {
  // static int money = 10; // herkes bunu Product.money diye cagirabilir
  static int? money = 10;
  // static void increasMoney(int newmoney) {
  //  money += newmoney;
  //}
  String name;
  Product(this.name);
  // constructorlarida override yapabiliyorsun
  Product.defne([this.name = 'defne']);
  // [] defaut  parametre attik opsiyonel parametrenin ikinci kullanimidir

  factory Product.fromUser(User user) {
    // constructor geriye deger dondurmez bu yuzden factory dedik eger geriye deger donduren bir
    // constructor yspiyorsaniz factory kullanmalisniz
    return Product(user.name);
  }

  static const companyName = "VB Bank";
  // bunu sonradan degistiremezler hata alirlar
  static void increasMoney(int newmoney) {
    if (money != null) {
      money = money! + newmoney;
    }
  }
}

class User {
  final String name;
  final String product;
  User(this.name, this.product);
}
