import 'user_model.dart';
import 'user_model2.dart';

void main() {
  //musteri adi var , parasi var , yasi var vb.
  final int cusMoney = 5;
  final String cusName = 'ahmet';
  final int cusAge = 13;
  //bu musterinin yasi 10 dan buyukse islem yap
  controlCus(cusMoney);
  // yeni musteri geliyor yine ayni alanlar
  final int cusMoney1 = 45;
  final String cusName1 = 'derya';
  final int cusAge1 = 34;
  controlCus(cusMoney1);

  // musterilerin sehirlerini eklemelisin
  // musterleri gruplasam yani bir kumelesem ve bunlar ayni ozellikleri ayni sekilde bana gosterebilse
  // class olusturma yapiyoruz yani

  int? newmoney;
  // ? koyma sebebimiz dart bir degisken tanimlarken onun ne oldugunu bilmek istiyor
  // yani baslangic degeri veremden bir degisken tanimlarsam hata alaiyorum
  // cunku dart hic bir nesneyi basi bos tanimlamami istemiyor
  // bunu duzeltmek icin;
  // ya default deger vericem , ya degerini atayacagim yada burada oldugu gibi ? koyucagim
  print(newmoney);

  int? newMoney2; // bu kod daha sagliklidir su yontemden
  // print(newMoney2!+50); o unlemi ekledigim zaman ben kesinlikle null gelmicek demis oluyorum
  // bu yuzden bu yontem cok tercih edilmemeli
  if (newMoney2 != null) {
    print(newMoney2 + 50);
  }

// bankaya 3 tane musteri gelir birinin 100 tlsi var digernin hesabi hic yok
//digerinin 0 tlsi var
// hesabi olmayana hesap acalim
// 0 tlsi olani kov 100 tlsi olana hosgeldiniz de
// yeni bir method olsun bu method hesabi olmayanlari ve parasi 0 olanlari yok saysin
// para verdiklerimize ekranda true yazalim
  List<int?> customers = [100, null, 0];
  for (var item in customers) {
    if (item != null) {
      if (item > 0) {
        print('welcome to our bank');
      } else {
        print('please quit');
      }
    } else {
      print('open new account');
    }

    //------------------
    bool result =
        controlMoney(item) == null ? false : true; // conditional expression
    print(result);
    // eger item degeri null ise false calisicak
    // eger item degeri null degil ise true calisacaktir
  }

  print('--------' * 10); // yandaki isaretten 10 kere yazar

  User a = new User('derya', 45, age: 21, city: 'Mersin', id: '1');
  // constructor kullanarak nesne yarattim javaya benziyor
  print(a.toString());
  User d = new User('deraa', 100, id: '2');
  print(d.toString());
  // musteri son gelen kisinin cityisine gosre kampanya yapacaktir eger istebul ise
  if (d.city != null) {
    if (d.city == 'istanbul') {
      print('you won campaign');
    }
  } else {
    print('not avaible your city information ');
  }
  User e = new User('derya', 60, id: '3');
  print(e.userCode); // city degeri girmedigim icin output istderya olacaktir
  print(e.isEmptyId);
  // musteri id 12 olana indiirm yap
  List<User> users = [a, d, e];
  for (var element in users) {
    if (element.getId() == 12) {
      element.money += 5;
      print('won discount');
    } else {
      print('try again please');
    }
  }

  //
  User2 user2 = new User2('ali', 15);
  user2.money += 5;
}

int? controlMoney(int? money) {
  // methoda ? ekleme sebebim null dondurebilecegim icin eger null koymasaydim hata alicaktim
// bunun degeri hic null gelmicek demek oluyor bundan kaynaklda hata olusuyor
  if (money != null && money > 0) {
    return money;
  }
  //eger geriye deger donduren bir methodda return yazmasaniz ve bumethod da
  // null dondurma durumu varsa dart nullu otomatik dondurur yazmana gerek kalmaz
  // ama okuma acisindan yazabilirsin
  //if (money == null || money == 0) {
  //  return null;
  //}
}

void controlCus(int value) {
  if (value > 10) {
    print('might do shopping');
  } else {
    print('might not do shopping');
  }
}
