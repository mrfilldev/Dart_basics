amount_words(String s){
  RegExp punctuation = RegExp(r'[.,?:!;]');
  var s_replaced = s.replaceAll(punctuation, '');
  var s_splitted = s_replaced.split(' ');
  return(counter(s_splitted));


}

counter(List text){
  Map answer = {};
  List list = text;
  int i = 0;
  int quantity = 1;
  for(var word in text){
    if (word == text[i]){
    answer.update(
          word,
          (value) => value + quantity,
          ifAbsent: () => 1,
        );
    }
    i++;
  }
  return(answer);
}
