/// Класс вычисления количества повторений слов в строке
class Word1 {
  
  /// amountWords - главный метод класса
  Map amountWords(String s) {
    RegExp punctuation = RegExp(r'[.,?:!;]');
    var sReplaced = s.replaceAll(punctuation, '');
    var sSplitted = sReplaced.split(' ');
    return counter(sSplitted);
  }

  /// counter - вспомогательный метод класса по осуществлению подсчета слов
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
