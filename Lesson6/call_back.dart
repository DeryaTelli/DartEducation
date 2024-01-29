void main() {
  final user = User(money: 50);
  user.calculateMoney((int result) {
    print(user.money);
  });
}

//bunu kendin tanimliyorsun burada typedef olarak bu gericagirilanfonsiyonu tutuyoru
typedef CalculateCallBack = void Function(int data);



class User {
  @deprecated
  int money;
  User({required this.money});
//call back method
  void calculateMoney(CalculateCallBack onComplete) {
    money += 5;
    onComplete(money);
  }
}
