import 'dart:math';

class ToBinary {
  String tobinary(int a) {
    if(a < 0){
      a = a.abs();
    } else if(a == 0){
      return '00000000';
    } 
    String b = '';
    while (a > 0) {
      b = (a % 2).toString() + b;
      a ~/= 2;
    }
    return (b);
    }
  


  int todex(String a) {
    checkValid(a);
    num sum = 0;
    int n = a.length;
    String ch = a;
    for (int i = n - 1; i > -1; i--) {
      if (ch[i] == '1') {
        sum += pow(2, i);
      }
    }
    return sum.toInt();
  }

  checkValid(a){
    for (int i = 0; i < a.length; i++){
      if (a[i] != '1' || a[i] != '0'){
        throw FormatException('StringNotValid');
      }
    }
  }

}