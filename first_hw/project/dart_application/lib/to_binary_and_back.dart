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
    _checkValid(a);
    num sum = 0;
    String ch = a; // 10101010 >> 2**7 + 2**5 + 2**3 + 2**1 
    for (int i = a.length-1 ; i > -1; i--) {
      if (ch[i] == '1') {
        sum += pow(2, a.length - i-1);
      }
    }
    return sum.toInt();
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
