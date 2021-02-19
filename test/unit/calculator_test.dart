import 'package:flutter_test/flutter_test.dart';
import 'package:testapp/calculator.dart';


void main(){

  Calculator calculator;

  setUp((){
    calculator = Calculator();
  });
  
  group('Addition tests', (){
    test('adding 2 and 2 returns 4', () {
    expect(calculator.addition(2, 2), 4);
  });
  

  test('adding two negative numbers -2 and -2 gives a positive number 4', () {
    expect(calculator.addition(-2, -2), -4);
  });

  });
}