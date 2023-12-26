void main() {
  final user = _User('derya', age: 2);
  // musterinin yasi 18 den kucuk kontrolu yaparmisin
  if (user.age is int) {
    // user.age!=null buda dogru bir ifadedir
    if (user.age! < 18) {
      print('yasiniz 18 den kucuk');
      user.updateMoneyWithString('Tr');
    } else {
      print('yasiniz 18 den buyuk');
      user.updateMoneyWithInt(21);
    }
  }

  // kullaniciilarimin parasii var ama paranin tipi degisken olabilir
  // parasi olan adamamin o parametresi isimde olabilir degerde olabilir
  // ya tr yazacak yada orada 15 yazabilir gibi
  // ekranda degeri goster
  final _newType = user.moneyType is String
      ? user.moneyType as String
      : 'String degil deger ';
  print((_newType) + "a");
  // dynamic tur oldugu icin iki farkli type var ve bu typlari belirtip hata yememek istiyorsa
  // kisa if el kullanarak String mi int mi olugunu anlayip ona gore islem yatiriyoruz

  int a = 50;
  int b = 50;
  print(a == b); // true donecektir

  Bank c = Bank(50,'a');
  Bank d = Bank(50,'a');
  print(c == d); // ama bu false donecektir
  //classlar birer referans tipitir
  //referans tipleride kendi iclerinde bir yer tutarlar bellekte
  // referanslari kontrol eder esitlemede degerleri degir

  // musteri banka sinifindan iki kisinin parasini toplayip sonucunu soylermisin
  print(c + d); // + yi class bilmedigi icin kendi operatorumuzu yazmamiz lazim
// benim bankama gelen musterilerin id ayni olanalar ayni musteri olmalidir 

}
//4.40
class Bank {
  final int money;
  final String id;
  Bank(this.money,this.id);
 
  int operator +(Bank newBank) {
    //operatoru classimizin icine dahil ediyoruz
    // ne turde tip donecegine sen karar veriyorsun doublede dyebilirsin

    return this.money + newBank.money;
  }
}

class _User {
  final String name;
  
  int? age;
  dynamic
      moneyType; // cok fazla kullanilmamali kod okunurlugu acisindan yararli degildir
  _User(this.name, {this.age});

  void updateMoneyWithString(String data) {
    moneyType = data;
  }

  void updateMoneyWithInt(int number) {
    moneyType = number;
  }
}
