void main() {
  IUser a = Turk();
  a.sayName();
  a = English();
  a.sayName();
}

abstract class IUser {
  final String name;
  IUser(this.name);
  void sayName();
}

class Turk implements IUser {
  @override
  // TODO: implement name
  String get name => 'derya';

  @override
  void sayName() {
    print('merhaba $name');
    print('karnin ac mi ?');
  }
}

class English implements IUser {
  @override
  String get name => 'adam';

  @override
  void sayName() {
    print('hello $name');
    print('let\'s meet our friends in oxford');
  }
}
