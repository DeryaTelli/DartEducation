void main() {
  // musteri geldi adi ahmet parasi 20
  Map<String, int> users = {'ahmet': 20, 'derya': 40};
  // musteri ahmetin ne kadar parasi var
  print('Ahmetin parasi ${users['ahmet']} TL');
  // Map<String(key) , int(value)> a = {key:value , key:value }
  print(users.values); // valuelari yazar
  print(users.keys);
  for (var item in users.keys) {
    print('${item}-${users[item]}');
  }

  for (var i = 0; i < users.length; i++) {
    print(
        'user name: ${users.keys.elementAt(i)} user value: ${users.values.elementAt(i)}');
  }

//bankayim musterilerimin birden fazla hesabi olabilir
// ahmet bey 3 hesabi var 100 , 300 ,200
// mehmet bey 2 hesabi var 30 , 50
// veli bey 1 hesap 30
// adamlarin hesaplarini kontrol et 150 tl den fazla olan varsa
// krediniz hazir de

  final Map<String, List<int>> customer = {
    'mehmet': [100, 300, 200],
    'ahmet': [30, 50],
    'veli': [50],
  };

  // su sekilde de yazabilirim
  // final Map<String, List<int>> customer = {
  //  'mehmet': [100, 300, 200],
  //};
  //customer['mehmet']=[30,50];
  //customer['veli']=[50];

  for (var i = 0; i < customer.length; i++) {
    for (var a in customer.values.elementAt(i)) {
      if (a > 150) {
        print('krediniz hazir');
      }
    }
  }
  for (var i in customer.keys) {
    for (var list in customer[i]!) {
      if (list > 150) {
        print('krediniz hazir');
      }
    }
  }
  // toplam paralari
 
  for (var i = 0; i < customer.length; i++) {
     int result = 0;
    for (var a in customer.values.elementAt(i)) {
      result = result + a;
    }

    print('${customer.keys.elementAt(i)} senin toplam paran: $result');
  }
}
