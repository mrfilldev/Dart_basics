/// Класс вычисления количества повторений слов в строке
///
/// amountWords - главный метод класса
///
/// counter - вспомогательный метод класса по осуществлению подсчета слов

class Word1 {
  Map amountWords(String s) {
    RegExp punctuation = RegExp(r'[.,?:!;]');
    var sReplaced = s.replaceAll(punctuation, '');
    var sSplitted = sReplaced.split(' ');
    return counter(sSplitted);
  }

  Map counter(List text) {
    Map answer = {};
    int i = 0;
    int quantity = 1;
    for (var word in text) {
      if (word == text[i]) {
        answer.update(
          word,
          (value) => value + quantity,
          ifAbsent: () => 1,
        );
      }
      i++;
    }
    return answer;
  }
}
