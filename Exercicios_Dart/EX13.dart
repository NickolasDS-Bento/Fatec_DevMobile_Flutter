/*13. Exibir os trinta primeiros valores da série de Fibonacci. A série: 1, 1, 2, 3, 5, 8, ...*/

void main() {
  
  int fib1 = 0;
  int fib2 = 1;
  int fibcal = 0;
  for (int i = 1; i < 30; i++) {
    fibcal = fib1+fib2;
    print(fibcal);
    fib1 = fib2;
    fib2 = fibcal;
  }
  
  
}
