void main() {
  if ('ali'.isAdmin()) {
    print('object');
  }

  //String? name;
  //name.isAdmin();
}


extension StringUserCheckExtension on String {
  bool isAdmin() {
    return this.toLowerCase() == 'admin'.toLowerCase();
    // toLowerCase kucuk yazar verilen degeri
  }
}

// eger null gelime ihtimali varsa degiskenimin asagidaki gibi kullanirim extensioni
//extension StringUserCheckExtension on String? {
//  bool isAdmin() {
//    return (this ?? '').toLowerCase() == 'admin'.toLowerCase();
    
//  }
//}
