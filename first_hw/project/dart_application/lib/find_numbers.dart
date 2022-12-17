isNumeric(string) => num.tryParse(string) != null;

class Parse1 {
  List findNumber(String s) {
    var answer = <num>[];
    var sReplaced = s.replaceAll('.', '');
    var sSplitted = sReplaced.split(' ');

    for (int i = 0; i < sSplitted.length; i++) {
      if (isNumeric(sSplitted[i])) {
        answer.add(int.parse(sSplitted[i]));
      }
    }
    return answer;
  }
}
