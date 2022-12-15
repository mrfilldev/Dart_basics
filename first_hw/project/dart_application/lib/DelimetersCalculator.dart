
int count_lcm(int a, int b){
  late int greater;
  late int lcm;
  if(a > b){
    greater = a;
  }
  else{
    greater = b;
  }
  while(true){
    if(greater % a == 0 && greater % b == 0){
      lcm = greater;
      break;
    }
    greater += 1;
  }
  return(lcm);
}

int count_hcf(int a, int b){
  late int smaller;
  late int hcf;
  if(a > b){
    smaller = b;
  }
  else{
    smaller = a;
  }
  for(int i = 1; i <= smaller + 1; i++){
    if((a % i == 0) && (b % i == 0)){
      hcf = i;
    }      
  }
  return(hcf);
}