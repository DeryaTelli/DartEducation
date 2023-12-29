void main() {
// hep ayni degerleri kullaniyorsam cagiriyorsam orda bu classin bu ozeligini kullaniyorumdur
  final newP = Product.money;
  print(newP);
  calculateMoney(); //  calculateMoney(Product.money ?? 0);
  productNameChange();
  calculateMoney();//calculateMoney(Product.money ?? 0);  bu kodun kontrolu yok evet ama calculate methodunun kontorlu var
  // cunku ona parametra yazdik  

}

void calculateMoney() { //void calculateMoney(int money ) { 
  if ((Product.money ?? 0) > 5) {// if (money > 5) {
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
  static const companyName = "VB Bank";
  // bunu sonradan degistiremezler hata alirlar
  static void increasMoney(int newmoney) {
    if (money != null) {
      money = money! + newmoney;
    }
  }
}
