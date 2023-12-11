void main(List<String> args) {
  var userMoney = 20;
  var userName = "derya"; // var take value type (int ,String vb.) by data value

  final int bankMoney = 100; // final value cannot be changed by anyone
  const String bankName = "VB bank"; // const value cannot be changed by anyone

  // bank name = "VB bank "
  // bank user 1 ="bank1Musteri"
  // bank user 1 in parasi 100.00
  //yeni bir musteri gelicek adi bank2musteri
  // yeni bankaya gelenden bankuser1in parasini cikartip ekrana goster

  const String bName = 'VB bank';
  final String username1 = 'Derya';
  const double user1Money = 100.00;
  final String username2 = "Veli";
  int user2Money = 500;
  print('New money: ${user2Money - user1Money.toInt()}');
  user2Money -= user1Money.toInt();
  print(user2Money);
  
  

  
  
  
  
  }




