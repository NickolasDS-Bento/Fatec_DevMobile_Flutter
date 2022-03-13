void main() {
  String sexo = "F";
  double peso = 50;
  double altura = 1.95;
  double imc = (peso/(altura*altura));
  
  if (sexo == "M"){
    if( imc < 20){
      print("Abaixo do peso");
    }
    if((imc >= 20) && (imc < 25)){
      print("Peso Ideal");
    }
    if( imc >= 25){
      print("Acima do peso");
    } 
  }
  
  if (sexo == "F"){
    if( imc < 19){
      print("Abaixo do peso");
    }
    if((imc >= 19) && (imc < 24)){
      print("Peso Ideal");
    }
    if( imc >= 24){
      print("Acima do peso");
    } 
  }
  
  
  }

