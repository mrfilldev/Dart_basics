import 'dart:math';

String tobinary(int a){
  String b = '';
  while(a>0){
    b = (a % 2).toString() + b;
    a ~/= 2; 
  }
  return(b);
}

int todex(String a){
  num sum=0;
  int n = a.length;
  String ch = a;
  for (int i = n - 1;i >- 1;i--){
      if (ch[i] == '1'){
        sum += pow(2, i);
      }
  }
  return(sum.toInt());
}