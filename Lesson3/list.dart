void main() {
  //bir bankaya 10 musteri gelir bunlarin 100 tlsi 110tlsi ve 50 tlsi vardir
  List<int> moneys = [100, 110, 500, 200, 300];
  print('the money of the customer 1: ${moneys[0]}');
  // paralari buyuk olana gore sirala
  moneys.sort(); // 100 ,110,200,300,500
  moneys.add(5); // 100 ,110,200,300,500,5
  moneys.insert(2, 450); // 2. indexe 450 ekliyecektir
  print(moneys);

  final List<int> newMoneys = [100, 110, 500, 200, 300];
  //newMoneys = []; // yapamam ama liste icini degistirip ekleme cikarma yapabilirim
  newMoneys.add(5);
  newMoneys.clear();
  print(newMoneys);

  // newMoneys.reversed.toList(); // reversed listeyi ters ceviriyor evet ama toList() yeni bir liste olusturuyor

  //100 tane musteri yap bunlarin hepsine isra ile numarasina gore 5 tl ekle
  List<double> customerMoney = List.generate(100, (index) {
    return index + 5;
  });
  // index numarasina 5 ekleyerek 100 elemanli liste olusturacaktir
  print(customerMoney);

  //Customer 100 30 40 60
  // 35 tlden buyuk olanlara kredi ver
  // kucuk olanlara by
  List<int> customersM = [100, 30, 40, 60];
  print("Sıralanmadan önce: $customersM");
  customersM.sort(); // kucukten buyuge siralama yapar
  print("Sıralandıktan sonra: $customersM");

  for (int i = 0; i < customersM.length; i++) {
    // first way
    if (customersM[i] > 35) {
      print('you can take a tax');
    } else {
      print('byee');
    }
  }
  for (int i = customersM.length - 1; i >= 0; i--) {
    print('ters : ${customersM[i]}');
    // sondan calistirmali
    if (customersM[i] > 35) {
      print('you can take a tax');
    } else {
      print('byee');
    }
  }
  customersM.forEach((element) {
    //second way
    if (element > 35) {
      print('you can take a tax');
    } else {
      print('byee');
    }
  });
}
