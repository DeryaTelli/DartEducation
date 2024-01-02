import 'dart:collection';

void main() {
  final carItems = [
    CarModel(CarsModels.yamaha, 'yamaha x5', 100.000, isSecondHand: false),
    CarModel(CarsModels.yamaha, 'y 56', 400),
    CarModel(CarsModels.toyota, 't45', 5000),
    CarModel(CarsModels.ford, 'f67', 6000, isSecondHand: false),
    CarModel(CarsModels.bmw, 'bm1', 100, city: 'ankara'),
  ];
  final resultCount =
      carItems.where((element) => element.isSecondHand == true).length;
  // ikinci el olan araclarin kac tane oldugunu dondurecektir
  print(resultCount);

  final newCar = CarModel(CarsModels.toyota, 't45', 5000);
  final isHaveCar = carItems.any((element) => element.name == newCar.name);
  print(isHaveCar);
  // belirli ozelliklerin ayni olup olmadigini sorgulamak icin any kullanabilirsin
  // eger yeni olusturdugun car modelinin tum ozellikleri ayni olan baska bir car modeli varmi bakmak istiyorsan sunu kullanmalisin
  final isHaveModel = carItems.contains(newCar);
  // ama esit olsa bile false dondurecektir cunku classlar referans tutarlar
  // carmodel classima equality kodunu eklersem bu kod true donecektir 
  print(isHaveModel);

  //final resultBmwMore200=carItems.where()
}

// benim bir arabalar sinifi olucak
//arabalarin modeli ismi parasi kesin olacak
//sehiri olmayacak
// ikinci el durumu eger musteri soylemezse ikinci el kabul edilecek her urun
// benim 5 tane arabam olucak
// bu arabalarimin kac tanesi ikinci el ?? bunu yazdirsin
// yeni bir araba geldi bu bizde var mi yokmu kontrol et
// bana bmw olan ve moneysi 200 den buyuk olan arabalarimizi  ismini soylermisin 

class CarModel {
  final CarsModels category;
  final String name;
  final double money;
  String? city;
  bool? isSecondHand;
  CarModel(this.category, this.name, this.money,
      {this.city, this.isSecondHand = true});

// equality olup olmadigina bakar bu kod 
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is CarModel &&
      other.category==category &&
      other.name==name &&
      other.money==money &&
      other.city==city &&
      other.isSecondHand==isSecondHand;
  }
  @override 
  int get hashCode{
    return category.hashCode ^ name.hashCode ^ money.hashCode ^ city.hashCode ^ isSecondHand.hashCode;	
  }
}

enum CarsModels { bmw, yamaha, ford, toyota }
