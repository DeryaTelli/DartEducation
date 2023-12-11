void main(List<String> args) {
  //keep customer's name
  // learn customer's money
  // say hello and customer's money
  //  for customer come our bank , add 5TL her money
  String customerName = 'Hale';
  int customerMoney = 50;
  print('Hello $customerName welcome your money: $customerMoney');
  customerMoney += 5;
  print('Current money: $customerMoney');

  print('${25 + 5}'); // you can do mathematical calculations ('${}')

  customerMoney = customerMoney ~/ 3;
  print('value: $customerMoney');

  
}
