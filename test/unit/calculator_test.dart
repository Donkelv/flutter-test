import 'package:flutter_test/flutter_test.dart';
import 'package:testapp/calculator.dart';


void main(){

  Calculator calculator;

  setUp((){
    calculator = Calculator();
  });
  test('adding 2 and 2 returns 4', () {
    expect(calculator.addition(2, 2), 4);
  });
}