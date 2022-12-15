isNumeric(string) => num.tryParse(string) != null;


find_number(String s){
  var answer = <num>[];
  
  var s_replaced = s.replaceAll('.', '');
  var s_splitted = s_replaced.split(' ');

  for(int i = 0; i < s_splitted.length; i++){
    if(isNumeric(s_splitted[i])){
      answer.add(int.parse(s_splitted[i]));
    }
  }



  return(answer);
}

