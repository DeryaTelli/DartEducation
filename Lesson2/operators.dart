void main() {
  int money = 5;
  money = money + 1;
  money += 1;
  money++; // f12 tiklayarak benzer operatorleri inceleyebilirsin
  // yukaridakiler ayni islemi yapmaktadir
  money--;

  String name = 'veli';
  String surname = 'bacik';
  print(name + surname);

  if (name == 'veli') {}
  if (name != 'veli') {}
  if (name.length > 'veli'.length) {}
  if (name.length < 'veli'.length) {}
  if (name.length <= 'veli'.length) {}
  if (name.length >= 'veli'.length) {}

  const int appleMoney = 20;
  const double disccount = 2.5;
  int myMoney = 30;

  myMoney = myMoney -
      (appleMoney ~/
          disccount); //double deger int atanamayacagi icin bunun yaklasik degerini aldirdik bolme islemi yaparken
  print(myMoney);

  print(myMoney % 2 == 0);
  print(myMoney.isEven); // cift olup olmadigini sorgular
  print(myMoney.isOdd); // tek olup olmadigini sorgular
}
