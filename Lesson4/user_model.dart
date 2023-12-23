// adi olmak zorunda
// parasi olmak zorunda
//yasini vermeyebilir
// sehrini vermeyebilir
//city yoksa  ist say
// id degiskenine sadece bu sinif icinde erisebilsin
class User {
  //ozellikleri tanimlamam gerekiyor
  late final String name; // late demek bu deger sonradan dolacaktir demek
  // ilk basta degeri null anlami yok demek bu yuzden dart bunu tanimlamami istiyor
  late int money;
  // final ifadesini kaldirdik cunku degismeyecek degerler icin kullanilir final biz indirim yaptigimiz zaman para degisecektir
  late final int? age;
  // olmayabilir degerlere ? ekliyorum null gelebilir demek istedigim icin
  late final String? city;
  late String userCode;
  // bu degiskenin degerini sonradan verebilirsiniz ama eger bu degiskenden once bunun degerini verirseniz hata yersiniz
  // eger late final yaparsam constructorda kullanmam gerekiyor constructor disinda late final olan hic bir seye dokunamayiz
  late final String _id;
  //bu veri gelmek zorundaysa bu degiskenin basina constructorda required atarsin
  //olmayabilir degerlere ? ekliyorum null gelebilir demek istedigim icin
  // gelemeyen parametleri opsiyenel gostermek yani girsemde olur oldugu icin {} parantez icine aliyorum
  User(String name, int money, {required String id, int? age, String? city}) {
// constructor
    this.name = name;
    this.money = money;
    this.age = age;
    this.city = city;
    userCode = (city ?? 'ist') + name;
    // (city ?? 'ist')koda bu yer su anlama gelir eger city degeri gelmezse o degeri ist kabul edecektir demek
    _id = id;
  }

  @override
  String toString() {
    return 'name: ${name} money: ${money} age: ${age} city: ${city}';
  }

  String getId() {
    return _id;
  }

 // bool isEmpty() {
 // return _id.isEmpty;
 // }

  bool get isEmptyId => _id.isEmpty;
  // bu kod yukaridakiyle aynidir arrow function geri deger dondurur 
}
