void main() {
  final customerMouse = Mouses.a4;
  print(customerMouse.index); //indexi verir
  print(customerMouse.name); // value ismini gosterir
  switch (customerMouse) {
    case Mouses.magic:
      print('magic');
      break;
    case Mouses.apple:
      print('apple');
      break;
    case Mouses.logitech:
      print('logitech');
      break;
    case Mouses.a4:
      print('a4');
      break;
  }

  print(customerMouse.isCheckName('apple'));
}

enum Mouses {
  //value tutan bir classtir
  // bunlarin indexi vardir
  magic,
  apple,
  logitech,
  a4,
}

extension MousesSelectedExtension on Mouses {
  bool isCheckName(String name) {
    return this.name == name;
    // this.name enumun icindeki isimleri yazdirir
    // diger name ise parametrenindir kullanicinin verdigi degeri yazdirir
  }
}

