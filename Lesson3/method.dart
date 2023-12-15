void main() {
  //benim bir musterim var parasi varmi yok mu kontrol et
  final int userMoney1 = 20;
  controlUserMoney(userMoney1, 5);
  final int userMoney2 = 3;
  controlUserMoney(userMoney2, 3);

//yeni musteri gelir parasi 50 tl
//parasini dolar  yapmak istiyor
// kac dolar oldugunu merak ediyor
  chanceDolar(30);
  print(chaceDolar2(30));
  sayHello('derya');

  // bana bir dolar hesaplama yap eger ben sana soylemezsem yeni bir durum var diye her zaman
  // 13 al dolar degerini
  final newR = convertToStandartDolar(100, dolarIndex: 13);
  final newR2 = convertToStandartDolar(100);
}

String sayHello(String name) {
  return 'Hello $name';
}

int convertToStandartDolar(int money, {int dolarIndex = 14}) {
  // opsiyonel deger vermezlerse alacagi deger belirlidir
  return money ~/ dolarIndex;
}

int chaceDolar2(int money) {
  // geri deger donduren method
  return money ~/ 13;
}

void chanceDolar(int money) {
  //deger dondurmeyen method
  double dolarmoney = money / 28.3;
  print('Current Money: ${dolarmoney}');
}

void controlUserMoney(int userMoney, int minValue) {
  if (userMoney > minValue) {
    print('para var');
  } else {
    print('para yok');
  }
}

int converToEuro(int userMoney, {int dolarIndex = 14}) {
  return userMoney ~/ dolarIndex;
}
