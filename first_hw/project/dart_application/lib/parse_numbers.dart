parse_numbers(String s){
  RegExp punctuation = RegExp(r'[.,?:!;]');
  var s_replaced = s.replaceAll(punctuation, '');
  var s_splitted = s_replaced.split(' ');
  return(try_parse(s_splitted));
}

try_parse(List list){
  Map dict = {
    'one': 1, 'two': 2, 'three': 3,
    'four': 4, 'five': 5, 'six': 6,
    'seven': 7, 'eight': 8, 'nine': 9
  };
  List empty_list = [];
  List answer = [];

  for(var word in list){
    if (!empty_list.contains(word)){
      empty_list.add(word);
      answer.add(dict[word]);
    }
  }
  return(answer);

}