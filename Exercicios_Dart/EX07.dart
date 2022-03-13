void main (){
 double peso= 100;
 double altura= 1.65;
 double imc;
  
 imc = (peso/(altura*altura));
 
 if (imc > 18 && imc < 24.9){
   print("Com o peso de $peso e a altura de $altura, você está no seu peso ideal");
 }
 else{
   print("Com o peso de $peso e a altura de $altura, você está não está no seu peso ideal");
 }
/*7. Entrar com o peso e a altura de uma determinada pessoa. 
 *Após a digitação, exibir se esta pessoa está ou não com seu peso ideal.
 * Fórmula: peso/altura².*/
}
