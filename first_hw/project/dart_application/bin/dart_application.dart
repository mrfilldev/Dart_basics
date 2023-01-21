import 'package:dart_application/delimeters_calculator.dart';
import 'package:dart_application/parse_numbers.dart';
import 'package:dart_application/class_user.dart';
import 'package:dart_application/to_binary_and_back.dart';
import 'package:dart_application/find_numbers.dart';
import 'package:dart_application/amount_words_in_string.dart';
import 'package:dart_application/class_point.dart';
import 'package:dart_application/sqrt_n_power.dart';


void main(List<String> arguments) {
  
  print('Задание 1. НОД и НОК\n');
  Calculator ex1 = Calculator();
  print(ex1.countGCD(10, 100));
  print(ex1.countLCM(24, 6));

  print('\nЗадание 2. 10 -> 2 && 2 -> 10\n');
  ToBinary ex2 = ToBinary();
  print(ex2.tobinary(-81));
  print(ex2.todex("-1001"));

  print('\nЗадание 3. Коллекция с числами из строки\n');
  Parse1 ex3 = Parse1();
  print(ex3.findNumber(
      'Пете было 14 лет, его рост составлял 160 сантиметров, любимой его оценкой была 5.'));

  print('\nЗадание 4. Map кол-во повторений слов из строки \n');
  Word1 ex4 = Word1();
  print(ex4.amountWords(
      'Пете было 30 лет, пять лет назад рост составлял 160 сантиметров и Пете нравился его рост'));

  print('\nЗадание 5. Отпарсить слова цифр записанные прописью\n');
  Parse2 ex5 = Parse2();
  print(ex5.parseNumbers(
      'one two two three three three three three three two two one'));

  print('\nЗадание 6. Точки, класс, конструктор, методы\n');
  Point another = Point(1, 2, 3);
  another.x = 3;
  another.y = 4;
  another.z = 5;
  print(
      'Расстояние от (${another.x},${another.y},${another.z}) до точки(0,0,0) = ${another.distanceTo(another)}');
  Point A = Point(1, 1, 1);
  Point B = Point(2, 2, 2);
  Point C = Point(3, 3, 3);
  print(
      'Площадь треугольника образованного точками A(${A.x},${A.y},${A.z}, B(${B.x},${B.y},${B.z}), C(${C.x},${C.y},${C.z}) = ${C.squareOfTriangle(A, B, C)}');

  print('\nЗадание 7. 2**5 = 32\n');
  num a = 100;
  num n = 45;
  print('Корень $n степени числа $a равен: ${a.sqrtNpower(a, n)}');
 
  print('\nЗадание 8. User\n');
  

  UserManager user = UserManager();
  print(user.email);
  user.addEmail();
  user.listEmails();
  user.deleteEmail(3);
  user.listEmails();

}
