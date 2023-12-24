// usermodel darttaki  gibi bide buradaki gibi class olusturabilirsin
class User2 {
  final String name;
  int _money; // private yaptim money degiskenimi
  // final degiskenini kaldirdik cunku money degisen bir deger
  final int? age;
  final String? city;
  late final String userCode;
  User2(this.name, this._money, {this.age, this.city}) {
    userCode = (city ?? 'istanbul') + name;
  }

  // private degerime baska classlardan erismek istiyorsam onlarin getter ve setter
  //methodlarini yazmam gerekiyor
  // int getMoney() {
  // return _money;
  // }
  // asagidaki methodu boylede olusturabilirsin
  int get money => _money;

  //setMoney(int money) {
  //  _money = money;
  //}
  // asagidaki methodu boylede olusturursun
  //set money(int money){
  //  _money = money;
  //}

  //eger girilen deger null gelebilirse napilmali
  set money(int? money) {
    if (money == null) {
      _money = 0;
    } else {
      _money = money;
    }
    // bu kodu yazmanin diger bir yolu ise
    // _money= money == null ? 0 : money; 'kisa if yapisi '
  }
}
