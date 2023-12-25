void main() {}

interface class StudentUser {
  final String name;
  final int age;
  int? schoolId;

  StudentUser(this.name, this.age);

  void saySomething() {
    print(age);
  }
}

class Student implements StudentUser {
  // interface yani implement yaparsak classlari onun icinde tum degiskenleri methodlari cagirmak zorundayiz
  // interface classini implements edecek classlar onun kopyalaridir
  @override
  // TODO: implement age
  int get age => throw UnimplementedError();

  @override
  // TODO: implement name
  String get name => throw UnimplementedError();

  @override
  void saySomething() {
    // TODO: implement saySomething
    print('Student');
  }
  
  @override
  int? schoolId;
}

class Student1 implements Student {
  @override
  // TODO: implement age
  int get age => throw UnimplementedError();

  @override
  // TODO: implement name
  String get name => throw UnimplementedError();

  @override
  void saySomething() {
    print('Student2');
    // TODO: implement saySomething
  }
  
  @override
  int? schoolId;
}
