import 'dart:math';

class ToBinary {
  String tobinary(int a) {
    String result = '';
    if (a < 0) {
      a = a.abs();
      result = '-';
    } else if (a == 0) {
      return '00000000';
    }
    String b = '';
    while (a > 0) {
      b = (a % 2).toString() + b;
      a ~/= 2;
    }
    result += b;
    return (result);
  }

  int todex(String a) {
    num sum = 0;
    num ratio = 1;
    if (a[0] == '-'){
      ratio = -1;
      a = a.replaceFirst(RegExp(r'-'), '');
    }    
    _checkValid(a);
    num number = 0;
    
    for (int i = 0; i < a.length; i ++){
        num c = num.parse(a[i]);
        num b = pow(2,(a.length - i -1));

        number += c * b;
    }
    number *= ratio;
    return number.toInt();
  }

  _checkValid(String a) {
    if(a.length > 8){
      throw FormatException("NumberMoreThan8Positions");
    } else if (a.isEmpty){
      throw FormatException("NumberMoreThan8Positions");
    }
    for (int i = 0; i < a.length; i++) {
      num? value = num.tryParse(a[i]);
      if (value == null){
        throw FormatException('StringNotValid $a');
      }
      if (value > 1){
        throw FormatException('StringNotValid $a');
      }
    }
  }
}