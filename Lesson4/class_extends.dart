void main() {
  User a = new User('Derya', 35);
  // yukaridaki kodu olusturmanin diger farkli yontemi ise sudur
  // final a =User('Derya',35);
  a.sayMoneyWithCompanyName();
  final userS = SpecialUser('deraa', 100, 50, 30);
  print(userS.calculate);
  print(userS.money); // moneyi degistirmiyor indirimli fiyati gosteriyor
}


// hepsinin paralarini gormelerini istiyorum benim bnka ismim ile
//hepsinde ayni methodun olmasini ve farkli ozzellukleri olmasini istiyorsam abstract bir class olusturmam gerekecektir
// abstract classla nesne olusturamazsin
abstract class IUser {
  final String name;
  final int money;
  IUser(this.name, this.money);
  void sayMoneyWithCompanyName() {
    print('ahmet- ${money} parasi var');
  }
}

class User extends IUser {
  // extends etmek aslinda parenti childa baglamaktir
  //Iuser parent user classida childdir ve child parentin her ozelligine erisebilir
  // methodlarinida kendine gore degistirebilir

  // final String name;
  // final int money;
  // User(this.name, this.money) : super(name, money);
  // yukaridaki yontemlede yazabilirsin ama genelde tercih edilen yontem budur
  User(String name, int money) : super(name, money);
  // bu islem yukaridakiyle aynidir
}

class BankUser extends IUser {
  final int bankCode;
  BankUser(String name, int money, this.bankCode) : super(name, money);
}

class SpecialUser extends IUser {
  final int bankCode;
  late final int _discount;
  SpecialUser(String name, int money, this.bankCode, int discount)
      : super(name, money) {
    _discount = discount;
  }
  // indirimli fiyati ne kadar
  int get calculate => money - (money ~/ discount);

  // geri deger donduren methodlarda tek islem varsa arrow functiona dondurmek daha yararlidir
  // property yani deger almiyorsa methot getter yapariz
  //int calculate(int discount) {
  // return money - (money ~/ discount);
  //}

  int get discount => _discount;
  set discount(int discount) => _discount = discount;
}
