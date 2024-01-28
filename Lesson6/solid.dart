import 'polymorphism.dart';

void main() {
  IDatabase database = SQL();
  database = Mongo();
}

class UserManager {
  String name;
  UserManager(this.name);
  void changeUserName(String name) {
    this.name = name;
  }
  // class icersinde sadece o classa ait isleri yapmalisin o
  // o classda yapilmasina gerek olmayan isleri degil
}

class UserLocalization {
  final UserManager manager;
  UserLocalization(this.manager);
  void updateNameandLocalization() {
    manager.changeUserName('derya');
    changeLocalization();
  }

  void changeLocalization() {
    print('location');
  }
}

//Open Closed Principle (OSP)---------------------
// ana class'a dokunmadan diger classlari degistirerek ilerliyorsunuz
class Product {
  final String name;
  final int money;
  Product(this.name, this.money);
}

// bu classima ozellik kazandirmak istiyorsam eger
class ProductCategories extends Product {
  final String category = 'ac';
  ProductCategories(String name, int money) : super(name, money);
}

//Liskov Substitution Principle (LSP)---------------------

abstract class IDatabase {
  void write();
}

class SQL extends IDatabase {
  @override
  void write() {}
}

class Mongo extends IDatabase {
  @override
  void write() {}
}

// Interface Segregation Principle (ISP)---------------------
abstract class IUserOperation implements IUserLocation, ILanguage {
  void write();
  void read();
  void listen();
  void speak();
}

abstract class IUserLocation {
  void locationChange();
}

abstract class ILanguage {
  void language();
}

class UserLocation extends IUserLocation {
  @override
  void locationChange() {
    print('location change');
  }
}

abstract class ICameraManager {
  void readQR();
}

class DeviceCameraManager extends ICameraManager {
  final IphoneCameraRead iphoneCamereRead;
  DeviceCameraManager(this.iphoneCamereRead);
  @override
  void readQR() {
    // TODO: implement readQR
  }

}

class IphoneCameraRead extends ICameraManager {
  @override
  void readQR() {
    // TODO: implement readQR
  }
}
