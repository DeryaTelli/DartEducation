void main() {
  String userName = 'a';
  if (userName.length > 2) {
    print('a');
  } else {
    throw UserNameException();
  }
}

//kendi exceptionlarini yazabilirisin
class UserNameException implements Exception {
  @override
  String toString() {
    return 'User name was given null ';
  }
}
