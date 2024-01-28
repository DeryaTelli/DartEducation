Future<void> main() async {
  print('a');
  //5sn bekle sonra gel hic bir musteri alma
  //Future.forEach([1,2,3,4,5,6], (int element) async {
  // await Future.delayed(Duration(seconds: 2));
  // print('process is over $element');
  // });
  //await Future.delayed(Duration(seconds:2));// asenkron islem gerceklestirdim 2 sn sonra aliyi yazacaktir
  print('ali');

  print('hello');
  Future.delayed(Duration(seconds: 1)).whenComplete(() {
    print('hello2');
  });
  // event loop yapisi bu oluyor
  // bu yapida once ana threaddeki islemler biter
  //sonra future requestler yani diger islemler baslar bunlarda sirasiyla yani ayni saniye iseler uste olan ilk cevabini dondurur
  //ama eger saniyeleri farkliysa az saniyeye sahip olan ilk once cevabini dondurur

  print('hello3');
  Future.delayed(Duration(seconds: 2)).whenComplete(() {
    print('hello4');
  });
//Stream sınıfı, asenkron programlamada kullanılan bir yapıdır. Bu sınıf, sürekli olarak veri akışını temsil eder
// ve bu veri akışı üzerinde işlem yapmayı sağlar. Stream'ler, olayları (events) ve verileri asenkron olarak aktarmak için kullanılır.
// Bu yapı, özellikle kullanıcı arayüzü etkileşimleri, ağ çağrıları, dosya okuma/yazma gibi işlemlerde oldukça kullanışlıdır.
  Stream<int> bankMoney = Stream.empty();
  bankMoney = _dataAddBankMoney(15, 3);
  bankMoney.listen((event) {
    print(event);
  });
}

Stream<int> _dataAddBankMoney(int retryCount, int money) async* {
  int _localRetry = 0;
  await Future.delayed(Duration(seconds: 1));
  while (_localRetry < retryCount) {
    _localRetry++;
    yield money += 5;
  }
}

//bir servise cevap sonradan gelecek
// matematik islemi var zaman alacak farkli iste yapmak istiyorum
//işlemlerimiz zaman alıyorsa asenkron işlem kullanıyoruz
//thread durdurup işlemi yapıyoruz sonra thread devam ettiriyoruz
//Asenkron işlem, bir işlemin tamamlanmasını beklemeden diğer işlemlere devam eden ve bu işlemleri arka planda gerçekleştiren bir yapıdır
// genellikle ağ çağrıları, dosya okuma/yazma gibi uzun sürecek işlemlerde ve kullanıcı arayüzü (UI) etkileşimlerinde kullanılır

//sync senkron;
// bir işlemin tamamlanmadan diğerine geçmeyen ve adım adım ilerleyen bir işlemdir.
// bekleme durumu yoktur bu durumda thread durdurmak gibi bir seneryo yoktur burada
