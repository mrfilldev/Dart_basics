class Parse2 {
  List parseNumbers(String s) {
    RegExp punctuation = RegExp(r'[.,?:!;]');
    var sReplaced = s.replaceAll(punctuation, '');
    var sSplitted = sReplaced.split(' ');
    return (tryParse(sSplitted));
  }

  List tryParse(List list) {
    Map dict = {
      'one': 1,
      'two': 2,
      'three': 3,
      'four': 4,
      'five': 5,
      'six': 6,
      'seven': 7,
      'eight': 8,
      'nine': 9
    };
    List emptyList = [];
    List answer = [];

    for (var word in list) {
      if (!emptyList.contains(word)) {
        emptyList.add(word);
        answer.add(dict[word]);
      }
    }
    return answer;
  }
}
