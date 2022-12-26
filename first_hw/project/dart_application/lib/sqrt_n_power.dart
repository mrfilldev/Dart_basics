extension SqrtNpower on num {
  num sqrtNpower(num a, num n) {
    _checkValid(a, n); 
    
    num eps = 0.00001;             //допустимая погрешность
    num root = a / n;              //начальное приближение корня
    num rn = a;                    //значение корня последовательным делением
    int countiter = 0;             //число итераций
    while(mabs(root - rn) >= eps){
        rn = a;
        for(int i = 1; i < n; i++){
            rn = rn / root;
        }
        root = 0.5 * ( rn + root);
        countiter++;
    }
   
    
    return root;
  }

  num mabs(num x){ return (x < 0)? -x : x; }

  _checkValid(num a, num n){
    if(a > 0){
      return true;
    } else {
      throw Exception('Невозможно извлечь корень $n из $a');
    }
  }
}
