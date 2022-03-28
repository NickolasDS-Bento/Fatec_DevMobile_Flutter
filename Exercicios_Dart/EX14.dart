//14. Exibir os vinte primeiros valores da série de Bergamaschi. A série: 1, 1, 1, 3, 5, 9, 17, ...

void main() {
  
  int fib1 = 0;
  int fib2 = 1;
  int fibcal = 0;
  for (int i = 1; i < 30; i++) {
    fibcal = fib1+fib2;
    if((fibcal % 2) != 0){
    
    
    print(fibcal);
    fib1 = fib2;
    fib2 = fibcal;
    }
    
  }
  
  
}
