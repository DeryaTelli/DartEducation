void main(List<String> args) {
  int money = 50;
  String userName = 'Veli';
  //bool= 0,1 yani false or true
  print('$money ' + userName);
  bool isCustomerRich = false;

  if (money > 10) {
    isCustomerRich = true;
    print('you are rich ');
  } else {
    isCustomerRich = false;
    print('you are poor ');
  }
  money -= 10;
  if (money > 10) {
    isCustomerRich = true;
    print('you are so rich ');
  } else {
    isCustomerRich = false;
    print('you are so poor ');
  }

// musteri bankaya gelir ve 10 tlsi vardir bir sorgu yapar
//sorgu sonucu 20 tlsi alinacan fakat parasi sorguya yeterliyse
//eger kalan parasi 0 dan kucukse bankadan kovulur
//eger adamin parasi querye yetmiyorsa bankaya almayin

  int userMoney = 10;
  const int query = 5;
  const int queryGeneral = 20;

  if (userMoney > query) {
    print('welcome sir');
    userMoney -= queryGeneral;
  } else if (userMoney > 0) {
    print('take a order sir');
    userMoney -= query;
  } else {
    print('not enough money to process');
  }

//bir magazaya isim verilicek
//ornek isimler toplanir
//ornek isimler ahmet mehmet veli kx k
// magaza derki ben sadece karakter uzunlugu iki veya daha alti olanlari gormek istiyorum
//bu kosula uanlari yan yana gormek istiyorum aralarinda bosluk olucak

  final String ahmetCompany = 'ahmet';
  final String mehmetCompany = 'mehmet';
  final String veliCompany = 'veli';
  final String kxCompany = 'kx';
  final String xCompany = 'x';
  const int companyLenght = 2;
  String result = '';
  if (ahmetCompany.length > companyLenght) {
    result += ahmetCompany;
  }
  if (mehmetCompany.length > companyLenght) {
    result += mehmetCompany;
  }
  if (veliCompany.length > companyLenght) {
    result += veliCompany;
  }
  if (kxCompany.length > companyLenght) {
    result += kxCompany;
  }
  if (xCompany.length > companyLenght) {
    result += xCompany;
  }
  if (result.length<= 0) {
    print('not have boss ');
  }else{
    print(result);
  }
  
}
