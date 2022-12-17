extension SqrtNpower on num {
  num sqrtNpower(num n){
    num nsave = n;
    if (n == 0){
      return 1;
    }
    for(int i = 1; i < n; i++)
    {
        n*=nsave;
    }
    return n;
  }
}