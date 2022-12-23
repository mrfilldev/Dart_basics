/// Класс вычисления наибольшего общего делителя (НОД).
///
/// [a] и [b] - натуральные числа из которых вычисляется НОД.
///
///  countLCM - функция по нахождению НОК
///
///  countGCD - функция по нахождению НОД
///
///

class Calculator {
  int countLCM(int a, int b) {
    checkNatural(a);
    checkNatural(b);
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

  int countGCD(int a, int b) {
    checkNatural(a);
    checkNatural(b);
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

  void checkNatural(number) {
    if (number <= 0) {
      throw FormatException('NumberIsNotNatural');
    }
  }
}
