// usermodel darttaki  gibi bide buradaki gibi class olusturabilirsin
class User2 {
  final String name;
   int money;
  // final degiskenini kaldirdik cunku money degisen bir deger  
  final int? age;
  final String? city;
  late final String userCode;
  User2(this.name, this.money, {this.age, this.city}) {
    userCode = (city ?? 'istanbul') + name;
  }
}
