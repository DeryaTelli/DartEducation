void main() {
  final int classDegree = 2;
  bool isSucess = false;
  switch (classDegree) {
    case 0:
      print('okey');
      isSucess = true;
      break;
    case 1:
      print('good');
      isSucess = true;
      break;
    case 2:
      print('enough');
      isSucess = true;
      break;
    default:
      print('unsuccessful');
      isSucess = false;
  }

  print('sir, your child result: $isSucess');

  // magazaya gelen isimlerden veli olan varsa print bravoo yaz
  String name = 'Veli';
  switch (name) {
    case 'Veli':
      print('bravo');
      break;
    default:
      print('incorrect');
      break;
  }
}
