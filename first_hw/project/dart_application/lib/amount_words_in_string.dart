/// Класс вычисления количества повторений слов в строке
class Word1 {
  
  
  Map amountWords(String s) {
    RegExp punctuation = RegExp(r'[.,?:!;]'); // определяем регулярку для всей пунктуации
    var sReplaced = s.replaceAll(punctuation, ''); // убираем всю пунктуацию
    var sSplitted = sReplaced.split(' '); // разбиваем по пробелам
    return counter(sSplitted);
  }

  Map counter(List text) {
    Map answer = {};
    int i = 0;
    int quantity = 1;
    for (var word in text) {
      if (word == text[i]) {
        /// обновление словаря;
        /// в случае отсутствия - записываем ключ со значением 1
        /// в случае наличия - увеличиваем на 1
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
