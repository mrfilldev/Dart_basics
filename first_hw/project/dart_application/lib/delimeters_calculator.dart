/// Класс вычисления НОК и НОД.
/// [a] и [b] - натуральные числа из которых вычисляется НОД.
class Calculator {

  ///  функция по нахождению НОК
  int countLCM(int a, int b) {
    _checkNatural(a);
    _checkNatural(b);
    late int greater;
    late int lcm;
    if (a > b) {
      greater = a;
    } else {
      greater = b;
    }
    while (true) {
      if (greater % a == 0 && greater % b == 0) {
        lcm = greater;
        break;
      }
      greater += 1;
    }
    return lcm;
  }
  
  ///  функция по нахождению НОД
  int countGCD(int a, int b) {
    _checkNatural(a);
    _checkNatural(b);
    late int smaller;
    late int hcf;
    if (a > b) {
      smaller = b;
    } else {
      smaller = a;
    }
    for (int i = 1; i <= smaller + 1; i++) {
      if ((a % i == 0) && (b % i == 0)) {
        hcf = i;
      }
    }
    return hcf;
  }
  ///  проверка на натуральное число
  void _checkNatural(int number) {
    if (number <= 0) {
      throw FormatException('NumberIsNotNatural');
    }
  }
}
