void main() {
  final user = User(data: 50);
  final user2 = AdminUser();
  removeUserAll(user2);
}

// iadminin sub classlari kullanabilir bu methodu 
void removeUserAll<T extends IAdmin>(T data) {
  data.removeUser();
}

class User<T> {
  T data;
  User({required this.data});
}

abstract class IAdmin {
  void removeUser();
}

class AdminUser extends IAdmin {
  @override
  void removeUser() {}
}
