import 'dart:collection';

import 'class_singleton.dart';

void main() {
  final carItems = [
    CarModel(CarsModels.yamaha, 'yamaha x5', 100, isSecondHand: false),
    CarModel(CarsModels.yamaha, 'y 56', 400),
    CarModel(CarsModels.toyota, 't45', 5000),
    CarModel(CarsModels.bmw, 'f67', 6000, isSecondHand: false),
    CarModel(CarsModels.bmw, 'bm1', 100, city: 'ankara'),
  ];
  final resultCount =
      carItems.where((element) => element.isSecondHand == true).length;
  // ikinci el olan araclarin kac tane oldugunu dondurecektir
  print(resultCount);

  final newCar = CarModel(CarsModels.bmw, 't4', 5000);
  final isHaveCar = carItems.any((element) => element.name == newCar.name);
  print(isHaveCar);
  // belirli ozelliklerin ayni olup olmadigini sorgulamak icin any kullanabilirsin
  // eger yeni olusturdugun car modelinin tum ozellikleri ayni olan baska bir car modeli varmi bakmak istiyorsan sunu kullanmalisin
  final isHaveModel = carItems.contains(newCar);
  // ama esit olsa bile false dondurecektir cunku classlar referans tutarlar
  // carmodel classima equality kodunu eklersem bu kod true donecektir
  print(isHaveModel);

  final resultBmwMore200 = carItems.where((element) {
    return element.category == CarsModels.bmw && element.money > 200;
  }).join();
  print(resultBmwMore200);
  //toString methodunu override etmeden once Instance of 'CarModel' yazacaktir ama eger
  // class icerisinde tanimlarsan toStringi araba modeli bmw olan ve moneysi 200den fazla olanin ismini verecektir

  final carNames = carItems.map((e) => e.name).join(',');
  // map yapmak demek yeni obje uretmek ve bu objeyle isimleri cagirdik
  // yukaridaki kod isimleri yazdirir join methodunun icine yazdigim virgulde eklenir aralarina
  print(carNames);

  //final fordCar =
  //   carItems.singleWhere((element) => element.category == CarsModels.ford);
  //  print(fordCar);
  // singleWhere demek o veriden bir tane olmasi yeter ama eger veri yoksa ne olacak
  // sie hata verecektir kod bunun onune gecmek icin exception kullanmaliyiz yani try catch kullanarak kullanmalisin
  try {
    final fordCar =
        carItems.singleWhere((element) => element.category == CarsModels.ford);
    print(fordCar);
  } catch (e) {
    print('invalid data ');
  } finally {
    print('done'); // her turlu seneryoda finally calisacaktir
  }

  final index1 = carItems.indexOf(newCar);
  print(index1); // new car eklemeden onceki indexi
  carItems.add(newCar);
  final index = carItems.indexOf(newCar);
  print(index); // new car listeye ekledikten sonraki degeri

  carItems.sort(((a, b) => a.compareTo(b)));
  // carItems.sort(((first, second) => first.money.compareTo(second.money))); // buda kucukten buyuge siralamadir buyukten kucuke ise second la first yer degistirir
  print(carItems);
  print('----------------------------');
  calculateToUSer([...carItems]); // kesin liste yapmanin cozumu !!
 

  // final users = carItems.expand((element) => element.users).toList();
  // simdi benim caritems listemdeki elemanlarimi users verip yeni bir liste olusturdu

  final deleteLast = carItems.removeLast(); // sondaki elemani silecektir
  print(deleteLast);
  carItems.removeWhere(
      (element) => element.category == CarsModels.bmw || element.money > 30);
  print('elemanlar : $carItems');
}

void calculateToUSer(List<CarModel> items) { 
  final newItems = items.map((CarModel e) {
    if (e.category == CarsModels.bmw) { // bmvleri forda donusturecektir bu 
      e.category = CarsModels.ford;
    }
    if (e.isSecondHand) {
      e.isSecondHand = false;
    }
    return e;
  }).toList();

  print('elemanlar : $newItems');
}

// benim bir arabalar sinifi olucak
//arabalarin modeli ismi parasi kesin olacak
//sehiri olmayacak
// ikinci el durumu eger musteri soylemezse ikinci el kabul edilecek her urun
// benim 5 tane arabam olucak
// bu arabalarimin kac tanesi ikinci el ?? bunu yazdirsin
// yeni bir araba geldi bu bizde var mi yokmu kontrol et
// bana bmw olan ve moneysi 200 den buyuk olan arabalarimizi  ismini soylermisin
// elimizde ford otomobil var mi
// sadece isimleri yan yana gosterirmisin
// su yeni gelen arabaya var demistin bunun kacinci sirada oldugunu soylermisin
// ben yeni araba aldim eklermisin
// bana arabalari kucukten buyuge dogru siralarmisin
// ben butun arabalarimi user yapacagim
// bmw olan ve 30 dan dusuk olanlari duselim
// en son ekleneneni silelim

class CarModel {
  CarsModels category;
  final String name;
  final double money;
  List<User> users;
  String? city;
  bool isSecondHand;
  CarModel(this.category, this.name, this.money,
      {this.city, this.isSecondHand = true, this.users = const []});

  int compareTo(CarModel b) {
    if (money > b.money)
      return 1;
    else if (money < b.money)
      return -1;
    else
      return 0;
  }

// equality olup olmadigina bakar bu kod
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is CarModel &&
        other.category == category &&
        other.name == name &&
        other.money == money &&
        other.city == city &&
        other.isSecondHand == isSecondHand;
  }

  @override
  int get hashCode {
    return category.hashCode ^
        name.hashCode ^
        money.hashCode ^
        city.hashCode ^
        isSecondHand.hashCode;
  }

  @override
  String toString() {
    return ' kategory : $category  name: $name , $money';
  }
}

enum CarsModels { bmw, yamaha, ford, toyota }
